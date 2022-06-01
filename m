Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2533205
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 20:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654113779;
	h=To:Subject:From:Message-Id:Date;
	bh=nEFnqliFlv/ks0rHkVO2N/racvwLQ2niXegjISifTZw=;
	b=VF3VfP0dDns1n36UhChZWAK5YhzluWSnHN5Nl7/e0+vaf+BgoAPaPzMtgF3j8YTC
	8YwgZvlOn3icsh5VBgs1eYjriTklAmfGsS0kkTCdfUlgeTYN+a/pG1iNA2N+twfbFSf
	N7mfaDbzcEy0lbOVDNLIVAyE2Z5dGiXXCDFhp2GY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654113779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nEFnqliFlv/ks0rHkVO2N/racvwLQ2niXegjISifTZw=;
	b=Zj6LiutB51+SHKCAeWhucuEw4UOQO2L0KIVwUOHP5au2P0MWLN8RkM4pyjWrIAnB
	QkvbTVKvsGjK72WyHcln8klf662tbUND17hRPd9diiHZh/ZM+2Ho9GKouBGsZpi3KKD
	alUAjqfj82yay6P5oOCWvX8dFuk9tZvk9E0QITjY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018120dd3eb3-069a89aa-6aa3-4374-bb55-e789fa75c2d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b002c7a2273da861b55f263238ae958f0f4abeee7d3a503ffde503dfc917936
Date: Wed, 1 Jun 2022 20:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654113779
