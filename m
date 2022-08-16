Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87B9A2CA2
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660674652;
	h=To:Subject:From:Message-Id:Date;
	bh=boQKCRf0iSjgjT6BuGN9NRUi7FIMd72p9P5DAUF36WY=;
	b=PF0BBd14x1eKJKOXb+BAvjWyd7s1NYO8sSIxs6qzLxrqu6Wo4cvS76ON5rUCuKga
	Oqe+ejczB3AKxTZbmfJSy8kgY4y6VKbYXn/55ejAJgLwQW/hBCa9cxR2/P5oxkCMFhe
	uGx7KB9PAk5z6s3MMoVmjCUmKTDEn48HudS/13iw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660674652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=boQKCRf0iSjgjT6BuGN9NRUi7FIMd72p9P5DAUF36WY=;
	b=Nxh9CFSd3kEnXZc/mxfGLG2DIXX8lEjhT3v4OEr75quEtRc3nTVYo5FBJb1Plxn9
	mY3QI8ArNTH8cK/sKsFqD1sA7ZUYY1Whfs5IrmO1s5a4hnt/7QSDgIPRLC3Mr7I0+nL
	xEt9DSDhPElk2TRqE5mJtccz4FVsE8J3JAQ+xELA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a7ec39a9-80e53b4a-d778-413c-95f8-cf834853beae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b46257f565f86fac7a203533fa2dac28f2ebae9a4d14bb6e83bf81cb659da7d
Date: Tue, 16 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660674652
