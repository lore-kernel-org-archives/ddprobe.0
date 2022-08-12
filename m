Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1795B20E4
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660319453;
	h=To:Subject:From:Message-Id:Date;
	bh=fXPUxA80FRsXzpBdBVqdvz9lSbMYGdCuyzstb3q9KqY=;
	b=cvY6h0ZkZsDeM8Icp3Ip/ewexCcsodTC38E1F9GlBGFHd1OtAtTnAtLWcbb11Jjr
	+JuZEbCQIUQ26d47r/zn9hRsztHjHSNVHzjh4l7Gc/VrVnZu9T9xiqBrNzVFD1YSvFZ
	oVTuN6CHL3CZdEk2F5sONdPU9yPxlQ1MNFBNZwiE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660319453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fXPUxA80FRsXzpBdBVqdvz9lSbMYGdCuyzstb3q9KqY=;
	b=esFtjlA6vcqth1yUYXGDPHpDc9v6k44b4Slmo7MJiajD72sb16OrCyY3QkzxAfbV
	B5ABJ22A0p5Vj/BLN0NgUWFSPD0b7H15ck3yMA8egOlF95WB0iYvqGOlz7MzIJ2kuny
	JKOQu9Vfqeytbesqlfzg5dgNdAxdBG4GjUldR6Uc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018292c04e97-7c44a8bd-7257-414c-b10e-11abb127a0dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45b85a33af2ca2187e9a4fc81b8bebf841661bf6cea9d0ae819de589b02adab2
Date: Fri, 12 Aug 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660319452
