Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECEA2100
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 10:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649326198;
	h=To:Subject:From:Message-Id:Date;
	bh=pb+o4sjRvuXhZHKvIEbkdMmHIs+l+Voa58X9ssBO7n0=;
	b=VUorj0FilnseVmFXiC9MveNfDoVl3x6X+FDAuUFID0rAiJJUHFV0XUt3pzm4wzXX
	fBEWpTWwp5c+omnjNEVDaXb7+KIOMbqzwrPdy+BLX45i8+xhHPf/qjXYVu16QAxSAIa
	PgGK0V1wrkaFvMjS2sC6HEf9KyYdXpCfLC1KkEcM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649326198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pb+o4sjRvuXhZHKvIEbkdMmHIs+l+Voa58X9ssBO7n0=;
	b=N1LUeBoJ7lZBo64K9DNgv/Pwdf5W4SUCBgWRW+GKQLTevfc3lJoVIFzKd1N7l4Zw
	RMmb5yDWICkptDwAMWRDmE0bd/I7flVV/9gBJEUtjlaY0paIW3BFXZ9gk/dVQNLo25i
	oS3Y7iAMOuKkCNLesjx8MEl0mUuR12aoVxl0lTRE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018003808de1-b5088447-ffe3-4b77-9d86-801ccaa5c0f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc4949ac2c090802fa38111abe9e21e14dd9a90d86f8754f6d48649db3c78193
Date: Thu, 7 Apr 2022 10:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649326198
