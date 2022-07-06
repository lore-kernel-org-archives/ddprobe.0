Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C7820EC
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 03:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657079812;
	h=To:Subject:From:Message-Id:Date;
	bh=QnP3QBSTwEznLGFj+a8vH+pu7vecSDxsuQaMszgDTvk=;
	b=TUwO4DmYabuD8NsZklLcAYH/7waiKBajIg3+Ro46qLuEXCwMQcC091Ad9nnGO8jY
	slNFs6Vqhp5A0NWx8KTvJU8dRQIWZlEYl2q95EFm+9VCEYnHs6OSPlyL0zZZbKWqncI
	jg494MxYg9WbzEWLV7gNpi1M2eytLRnl/XdvuHks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657079812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QnP3QBSTwEznLGFj+a8vH+pu7vecSDxsuQaMszgDTvk=;
	b=jCGTRQg1nBpWwv+yZuS9pmJjrnE+X+/iasUUg+LkLF4LyZok14KHj4WIZ4RGgArs
	hkBOMcq2P35fhmbj3Yln28zAcXzuOV8N6ZMctC4Kgx0fGlyMulyenwV8hvxVH0Q8hci
	pxi2QBs6EAT4Nh3+eWWlRN9aZrmvDlWOMTXDVJ5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d1a750b4-36fe191d-e56d-4651-899b-bac50c70230d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3dad6c2e12d782d98b85fab9e67df49ddc092f0454f242fee64766d400f39a9f
Date: Wed, 6 Jul 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657079812
