Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E251C01
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660493452;
	h=To:Subject:From:Message-Id:Date;
	bh=j+yLlEYD3R2sN7ZzOVRL/BqaTmhsQ0Z5JCog0hxQXUQ=;
	b=AVhkmT6GfUAXsd820DENsIP6yVzydjiuctWtYDsLHk+B41xPISQUAfFFHXmY9x26
	KunOeT2/IU2fH/g51jHiBTa8nKx/lKZMYR5N7qUoho5zzfen/B21rp5Wd1lZ8U07aAF
	iWCW3YfzxU67VTzT5sRfpTSrKkcmvAVHpxPuigOw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660493452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j+yLlEYD3R2sN7ZzOVRL/BqaTmhsQ0Z5JCog0hxQXUQ=;
	b=ckNqi/fYItv6oHH18COFTk0MKcBw6Bmhu37vIx/pe/ZL1XMkxi0y++cWr6ZdSsaO
	ELaYVaU8iRPURsGbLeaXO4OWD9Nwe3DNr/g3HW64bUykUXATgF+MdG5SyNi2uTXCQd3
	DKSA1ZqfUCEmGcr1p9ZmY+yTyZ+lAbJ3YOZL3PIE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829d1f551c-1b181fcc-c979-4016-8686-6c253852e87c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c33a4db77c8d3d2da593a53efcfdfd1323dfc344ebaaea629113bff423913b98
Date: Sun, 14 Aug 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660493452
