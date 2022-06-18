Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A61C7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 05:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655530439;
	h=To:Subject:From:Message-Id:Date;
	bh=S3We5jqM2R9lnp7qgtxrQQwC65Wjg8GeBvIkDeOcya4=;
	b=WANWXl5ZaxUWGQDne+6Ign+uIz5Dy7EI3NeUmfk/RoY95y7xxFmGe4UgLiTuxSok
	IV62UWnQp2r2tM8IzJTGac6TGVGTmNJJQfjDo9Qc1M1G35NrtBJSd1gjC04X60K9Q0F
	gEUSyFHox5nLOt0j8Kkem4GMsZypbLX/5ExInWAo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655530439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S3We5jqM2R9lnp7qgtxrQQwC65Wjg8GeBvIkDeOcya4=;
	b=Jyb4UsF9m37k7iB4XmLT8NfpLwYHNQtLxzWppRC04HD5iWdr2cYHBEwbE55/odB/
	koFGxqWiIRyA1mp0G13jaKTmrBWOG6fVMd/BMmLdp0X5S/5u8qonHWCMmEvGilYhkLm
	+W3AjBNDESNTR6moBq2615nLnfCsdEe00/n4FWRI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181754dc263-1eacf8af-8840-442e-a432-6d368a8f6b73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 328eeb6b51c6f11a1e48d13f4bcefea73c94f2f1cb2569dd53effa0933e82429
Date: Sat, 18 Jun 2022 05:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655530439
