Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553452F2B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645948584;
	h=To:Subject:From:Message-Id:Date;
	bh=BT38HAL9Dgr58WW1/JajvN0yFmCVRtZsLL/pjzJ7nrc=;
	b=m7Z9k7tAc3bOgvUs1KP7sogmWKxPxIEviEur/x/vqgfbYOOuOwLc4zj5d26/wAow
	nayctO5I5aK5oFs2L07ALOeSqzSauLz4qIJIQGF2ed6TYM7E7s8qoTNS7od7bZUeMMS
	XxHP9F/NnINdeLM3wbPAYMiucIMqeUCVqy2kVZK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645948584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BT38HAL9Dgr58WW1/JajvN0yFmCVRtZsLL/pjzJ7nrc=;
	b=JL4/voVwivaWfeHsIj9Krf0DwxNxr1Plfkdj8ClMDNbCjmamklt1d6f3vA4PYNYn
	ZxV2F2DxAVYGghT22smcp0rUIWd9p67CHzNVpuxkGGsTNfb8ctFJ3VQFAJGz6v/UD+p
	pO2/2KG1bBSurqvyYnxwcYHjEH65H6TFf58PXoEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a2e4329-46d7733b-427d-4510-976b-3a2aa0d28163-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0011f4f93d5a9fb10cb8eb96742029f6b794ab702fe2a30b464f7ac19e133757
Date: Sun, 27 Feb 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645948584
