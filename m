Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1936317C2
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 04:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657771612;
	h=To:Subject:From:Message-Id:Date;
	bh=uCcFthaNBvu0LtjW9ogUtthMzqIu8qDbYc7jmFRCaC4=;
	b=NYokUVL2aQC4EomsSytQl50XdWEl2oWQx41yV6V4xVDJxTh8/AhyHeBkJuv9+YYg
	hVHIi6Rol554CR2pO4jNLQW/fgRL9MKpfmKAOI5MZoXPIVl5NM1Oz9q4StfHy1cJkGD
	ovmFR8UvmJmbty+TtLjzK3SxeRKqKiAtP8mRm2zI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657771612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uCcFthaNBvu0LtjW9ogUtthMzqIu8qDbYc7jmFRCaC4=;
	b=CLjFH2gZySzbhtzRVzLvxOyA+0EsLRLVqtZ12/M+Op7686M73+6jROU5M6DF71w+
	a0XR8vzGQLO/Jr0ihfFqPoPBVrVKeCnpDRzZD/n8tFCrB6OPGYAY6Zb6SpOGcdLhF0/
	m//6rv6sg4dGpYD/2bxL8jZKVHtqSlx08Uytq3BA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fae3589d-b2bbf8d4-c9d7-46c6-9356-7e1c201aad20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3c508935ee7e49affb8193de74e5c68f74780ecb5a7d39c099c375aad26de52
Date: Thu, 14 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657771612
