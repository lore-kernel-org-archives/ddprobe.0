Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92CB715A3
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660863053;
	h=To:Subject:From:Message-Id:Date;
	bh=LxFKBDAxR2ArR3AEn4xDQwXpD6slBZnhlJ+XmW4xmKE=;
	b=MV/1wb5RstFdJdNeAnW02a+IhT8TqmXhkAWdnxq+K/SBcZGhs0NpD2OBN7S+FIyg
	X5/C7rVNe1JEiHjHSgAE1I6zWg65eb3VHrqeSy38A/I2uwLA2QOGcJIH7HerVzIB8Lf
	AZpNI5Vw0IGkuadwX/4kSAepOqB5d7xOCTsb2NDg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660863053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LxFKBDAxR2ArR3AEn4xDQwXpD6slBZnhlJ+XmW4xmKE=;
	b=Gam1HUNxo8O0If6/Luw+hJ9RMUSVcnvE/priiv9WStjDTIuo8tBcBEt/dPNy5YO5
	hG/ttKPsjw/tIb8u/LCCJb3qt5C9koq1lWwpJ3QTSfmNtDX4KzF8SEUU93meZILOHFf
	GaJOl6cIs7U+4YzPdobM9M6c6a3qIUB+hgmgB8Xw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b326fb1e-57beca93-9133-408b-8e85-f77e2f4fc8c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d673b104433a93de60a637536c194038ebbb7140212d909e76e3ad7529d60e12
Date: Thu, 18 Aug 2022 22:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660863052
