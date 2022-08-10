Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DAC818E
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660093253;
	h=To:Subject:From:Message-Id:Date;
	bh=kad88CRDsJqZIcgweORaP+JrB3YsDsiGA+rSOSGs9eo=;
	b=TTlNsNqAPtk1jtiVuqJzSw/pNGs8dD7mbD02g2J2atxWiHJIr6pSFVmDuW+zmRk1
	aYxJmRK2yodjFP7+Sf0OSS2SpSC22zh5P0kOtRA14wLfqDbgCdB4udbpbaFZszrmDwL
	Rk7N8YOlUzH7cgrP0CRjbJaxwBfHrvhK/pDjw4ys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660093253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kad88CRDsJqZIcgweORaP+JrB3YsDsiGA+rSOSGs9eo=;
	b=a+otoIuzfZV8FEii+cEBpkzKmEPwkw/lzhV61msCFqprWsSqZWTT9e60nSSaiOVJ
	GBJUw17bX6Dwh9JWsBnhvpiJ0k34W+8XxP859bixDXNXTgAZRLQWADiiUNc/IYpJgFT
	7weGjc4EfxJl4ht80LRMW8dpAgGcSORduF63QimI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828544c453-f623776c-318e-42bc-a82c-0c67170e3add-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6da260268f064cb51085cd93926f3e523c262caa94977c9e6c0f0b692ac703ae
Date: Wed, 10 Aug 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660093252
