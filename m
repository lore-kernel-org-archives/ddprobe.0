Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF91A624
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 11:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652527439;
	h=To:Subject:From:Message-Id:Date;
	bh=BDK66WTexWcaooj5YkJWDp99nvRqmbvdTQbDhZcUa+M=;
	b=NHR4cZBum2QBNxkVC/HOHkgnHfsuaF6UFxHGqvxofe5QW5Ypv1p3J5Rmr0lLhnm3
	MZDRc72+BihTuzRv6NOnnDx8lVPy/K3M2szbMmbsxxxfTxxIumg0pYQ+4EVUPtP03pz
	uNPCcAj6XtvqA4mdx5QyPoSAEFZ39iTU3R6UM4wI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652527439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BDK66WTexWcaooj5YkJWDp99nvRqmbvdTQbDhZcUa+M=;
	b=Hys/+CNg8vX9Jl67UwNQTNyRHPmsZkR/Lhi1Z3NwBPOIU/vWe/38PJNL96h4Xqsq
	i5ifKEdICUMVPJdvTPmEKnnDY0UwnlnZmBbaKV2NuNY8XMmG5/l/kXw9uo7aoOwT8MC
	fuCqhm308pdDYsq6b9adhThUGfYK8FS2wh6Usxd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c24f9d8e-b6d0404c-c10a-44cf-af9c-a76f3199580e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a6bd4f7446ebad7da06a5d0d03b3c144a4828cbb4a22a9babe63821120d7f08
Date: Sat, 14 May 2022 11:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652527439
