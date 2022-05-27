Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F49023A3
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 22:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653689279;
	h=To:Subject:From:Message-Id:Date;
	bh=N+YHO10xJItaC44t0kF0xSZksg9puKsgTfg/i/zrU+A=;
	b=HBL56hjfjuCITrINgezAQqEv0C45IFj1m2HKSAVwoUGJnmTbsqWBn4gnlWIqm5e1
	0L3JSCrdfAHcAzkH/fL7HF9bZiPUI8Fk+whNUbLeEtP/z17om9f0D2fHGGBQfOqdcXk
	onVxJY+tGYXtTOgeQK7Uwqi4cN+hIPoeO4/Ui6qw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653689279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N+YHO10xJItaC44t0kF0xSZksg9puKsgTfg/i/zrU+A=;
	b=A9BSoL0oJUJCSKsXiIgrFGzsPCYyCk6XOAsbr29xKj189lO7shMBut7zC1Huuhde
	UzK2gywzm9CbbrVtvaUD//+MMcxg0lukZZK+L20W/J28PFf3m+9TWxh+NC+BVl6FXcS
	F7ahhGt+N92gbYNaZBONlEVRY4kDcATOop04lJCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181078fe397-c9a40935-e608-45c0-afee-3e4845d450cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25edb1cc0ac2fafce959f4b5fde0d7b6b8843e712df169386d4a0e8077a56b72
Date: Fri, 27 May 2022 22:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653689279
