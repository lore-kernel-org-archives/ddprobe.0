Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84781851
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 08:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653638999;
	h=To:Subject:From:Message-Id:Date;
	bh=OLIsGWyKXUyI31WItP25Y9kpBwfWWWScEjzVP3GHCXA=;
	b=kNzzf56uxi+TcQh7OFVexFqE94bgSlPYlLTaLeLLJtk7wlAC6zuZA5xF7eQTUbL7
	TR2WtRmd22ZMsOvIxNbhT/cqYy7zO1SDq+uJjJy33qrMViKXBRPRZqNEcfTqLVXxJgT
	0CF3pJnKpu10tH+TCYVDvQXGCQzTFeP2G8PvqjkU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653638999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OLIsGWyKXUyI31WItP25Y9kpBwfWWWScEjzVP3GHCXA=;
	b=IUdYmHydNm0fFKWQp1stl33ZWYdzSB65roH/RnAS2hKcwB1Gxm7Yrl4tBvbdTHlz
	WtgqBXsD6kmFwILyer4ued1DmbZ4gsxenHVnPOz2zAlXc5yU8J/x3nNDGppwZI1pXWy
	aPzSHHyhBWQYFs6EDUSBq6bOM2nQjUmrVFzmT2J4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810490accb-63d16075-e1f8-463a-9122-d12e2bb67997-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9238afbb94290b2de8f2e1d5a1ea8ff910d7a4aeaf36344102c690d3d4141b1b
Date: Fri, 27 May 2022 08:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653638999
