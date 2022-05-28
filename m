Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03EFE23C2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 09:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653731579;
	h=To:Subject:From:Message-Id:Date;
	bh=2QjBBrPGu+RuyPutJ5IteMwueohWTvaQYtIgNUB3hTg=;
	b=ZTo+cugsP4UkNZaRZc6YAl+AYKcjSNUAG1WNbw3a5b9P5TMkoaJJZrIDnDgy63Ku
	h03oVM7oSnSWQFBLHLwSFDOJnMwOIUrMz6sAV9jk1zrfeBZEhWUuoks7BlqCuKsiliZ
	Ovspq5hZyxVzwcMXQgKmFzmCL2iL0+z8FZsvCEU8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653731579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2QjBBrPGu+RuyPutJ5IteMwueohWTvaQYtIgNUB3hTg=;
	b=YmlsGoaq2EhqbxbhjR3cZiAkHQzR1qZkQembSkuxA7hwTMW6gua/SmLhj8GCxddw
	BdDtjhDF049Sn/9A0PX7mHk2qNED+1zHjtPxlZ3SY/RVOZn8YF/uLCBiA1Lmrmt7yY+
	Xm18P9TWwRy9gfXwQlL58taJLy4oR+RiHQ6j4Mlc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810a1555a1-ad741503-e026-4a98-8916-1ae4f048b726-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 886c31cd393c3acc878c47d0dae0a0f3a47fd1c15531e19ac44d6b70d293283a
Date: Sat, 28 May 2022 09:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653731579
