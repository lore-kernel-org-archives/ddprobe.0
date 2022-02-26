Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619953B3C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645879884;
	h=To:Subject:From:Message-Id:Date;
	bh=RsLwXYGi2qJBYN0ZujwhLFjN5GYP16+ZJ/NTCp8hUUs=;
	b=TRLY+8RoRV9YGtEcofgsJV1/KacOG2/ocixzXfEsK8J2816PRAoVgdY6H+CjwbgE
	N5eAEWoMJ2AgzYFjGo/Dm74xyxEjwf1BT1fI5DlaMoL7Oq5dn/C6BcEDusIYu2irO6g
	HKlu1LtRt0vD9GKNiq7hDH9GAqHtO6xCgNRTVL6k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645879884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RsLwXYGi2qJBYN0ZujwhLFjN5GYP16+ZJ/NTCp8hUUs=;
	b=cLVZ3RVXdwtllngNxjuM/ieMxBj9tozyZBoEX39E1CqluiNexHZROZr1fC80wOO4
	z1GcnnANViChTCmPMtwD/LZdpfKk9ie7Yx65P1OPrH7Lf02jhZe6juQVZn/ZE9bv2qa
	ImyV3aZlV4JMjg4kTQfGO9zNkjUF8Up4oJE+gyV0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3615fbe8-90203659-a25c-4b9b-b153-896f6271b051-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cf9f5a5e1a1c1a9b7a6259c29165f382cc73a5ead4ce62662ae64dbd26aa1b8
Date: Sat, 26 Feb 2022 12:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645879884
