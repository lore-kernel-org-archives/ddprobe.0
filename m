Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746452F4A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 21:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646516784;
	h=To:Subject:From:Message-Id:Date;
	bh=GhKygERrJ+QLqQGYaGTC1n1ZZqc4H0GZrnKzH/XTbWk=;
	b=F9cIol1FXxj6C3MRm8KjaANK6Dg8Sb/U89I2gmjjmqLEqTRzySD1LVNalO+a7Rkt
	MIXz/0rN3gS+nE7izbci4okY1Yc3KsjYdYWfga/SV/uvJ2gwVoC7bQaCoQolE0BhjY2
	73vxZdXZjBti7hF0inXXdSahChuEWv0pnx4lRiQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646516784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GhKygERrJ+QLqQGYaGTC1n1ZZqc4H0GZrnKzH/XTbWk=;
	b=NToynMciJUxC67ZpI6GyUMU7P6txlzRYXMvilcYCCTBqvjRxwGNasNH175YMYNek
	9shwRaS6hhZMh/BlhMWiuiXvHy3mEcmnjfLjfVVI/qRMP/8rmydYrY9kigsywx/sIBK
	r/VAjsvCoP2z7wc0TxPbm6jDQa35dDR6obxAUGs8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5c0c4eac-79d14e6e-9e86-4698-bdbb-2f2edf7310ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 903a31c584bf28676386c33350fdaa33c91f644b45021ca3774402c38e2b5c26
Date: Sat, 5 Mar 2022 21:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646516784
