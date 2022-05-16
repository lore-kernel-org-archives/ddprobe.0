Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2690510E0
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 16:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652718119;
	h=To:Subject:From:Message-Id:Date;
	bh=0wOFCsdkzQUfCIJnUXzC+Da8M8w++ooWuVNCqs8dTmM=;
	b=gI2UVZBKiETSTyQbNHqmN/PiQ3G+OF89q3zigEwuDOoVr0a1hwLABBI/AgMhb5YH
	h8IVAffGw5SiM6eEW73cO/AimVVcfkxoIVdSYYyTdtmGs0ofxVZHsIOVAn7kbNhEBfa
	Qi1AxEMRWwrkINtPXQCe38mv6fckCVNw/B0UDzMQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652718119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0wOFCsdkzQUfCIJnUXzC+Da8M8w++ooWuVNCqs8dTmM=;
	b=GAHtGIVnAiNB6YOYbJDYq9fuTvOoYbKSvMiQtYduIyQQsX6wnGN9Rfq/9lC7zZri
	RrqROVlVC1aPjjPKfxpn63y9RwJjACE5r/0bmGM6QPkdGGnLAh+57U7Dtmac/wzR/LE
	PoBMrEyTkxGygmjbhvlfjlZ6tPr8LLf4rwa2d5cY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cdad2997-3d4a89d0-cb8c-4f02-bc56-0a0155667463-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09446685f8305642c437d22588172e91fa141cb9b402692ce3db7010c82abccc
Date: Mon, 16 May 2022 16:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652718119
