Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B8D27A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645990285;
	h=To:Subject:From:Message-Id:Date;
	bh=ity9nNeM3swazh/QEpgVIAqa2WxIZvmZLY/oCojVZx8=;
	b=AoZ3hKfonMIqzGeYNf+ku6NBoqSJGiQP409sjCz6G+cDiHITQ8Fsdw6lMISWZJCZ
	VC4Ew+44mXC1uEbwvbQz5zxmCnXbf/KWryUzPAkJS3ONpcmdDlUO+Il7OL5JH9Y1PrB
	xHUTqpt/RctGiT18GX8WiG7W/jsQKyhHh/hL77fQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645990285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ity9nNeM3swazh/QEpgVIAqa2WxIZvmZLY/oCojVZx8=;
	b=CVcLHRiMzZ92yWDNDG/OClWsnzkf7SCmyvKph6SUiaCbMmRcwZWGD6eLNzGbha8V
	ZrIVGb1hkSJlo/8qpnMAiL2KjEJ8dRN8PWwU2VL0Yl1Db9krVNiZZNHrFxLoPrXzuV5
	4qsdqPUKcY5UPu8e57uorXMz+ejRrsSjCGBQupvw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3caa8e8e-df8b4d62-5179-45b2-92fb-8a23e0ceec16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30732f23a1fc63b7c6db7f90d9b2735a064d90413e7fba301cf9a9cdce20ef58
Date: Sun, 27 Feb 2022 19:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645990284
