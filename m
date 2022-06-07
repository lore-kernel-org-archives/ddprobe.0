Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E97D7F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 17:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654622459;
	h=To:Subject:From:Message-Id:Date;
	bh=EWcYB3FbFtviOZad6BZuFEYvGftBEgbAxwW2lsmZ5i4=;
	b=LMQrZquf2/UhejvNZGQHHfz62WZHHsHN52lI+g6cJHRcFM4ErKWV5AOrASclTgWC
	odtv3xwFZAKR1BaqR6nfd3nufekovrXAfWUCLebl++Fl+3ijxHQYNIADmU39oDfDpM5
	8uSTNHuqKWw20BALi9Uv7yK64FCE2nwV2GPxnOf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654622459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EWcYB3FbFtviOZad6BZuFEYvGftBEgbAxwW2lsmZ5i4=;
	b=Enrzs6kR8D0GElFRt7TVYNswkiKn0gh22VVXrjPTH9PP7zT08kpITaXy9FPqxhaK
	u/QIyWxVCbYIw+F9/mUZnl1OywNhRjcx8j2cMaPGS1g4F+SMikXU+sxdQb7X3J5PR02
	MbDe+dVzPDEnD9UcwKp+b6pgMPoOEByZ0KRLZWOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813f2f1610-6bbdc342-de26-4bc5-bd77-78b2d59de0e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0360356a40e07f3238003e6fda3a567a0b56677a1b4a26e9773bbf5b92139007
Date: Tue, 7 Jun 2022 17:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654622459
