Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8781C3BE0
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742399994; cv=none; b=XNDvA/7q9AN94uHZpkEdYZw/1mODfv30MGKBrTYMzhMh4iGWRlquitu+U2OEoFZfYEJdNcnH5qpYjCklOYiGjJl7FEemk1VsRVibTVKX2vWCYkQGggBuRj5E48oC5sL51/PFD+VPxz8ss2iuq/tat5XNYuLWVhW6Uo8L2Q66njc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742399994; c=relaxed/simple;
	bh=RGZx4R+LeovWJR2ZIsFEGgdlyCtt4UFaq9xEAzWXxT8=;
	h=To:Subject:From:Message-Id:Date; b=mIfyrRt4AnAuMWN8zN6DdToC++ld+LdJtVpuNpoq90cE6HmM89SYdxBePERAyL5zY9MuuMo9j/R8MRGCU5xl4SZ2Ix4vyVtPje4eZI39eTM2xX6HblRzV0z45WRf2OzRDsExdpkLkpBYdsrjd47oWkKRSRDf26FYgntz7F2BUSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOKJfSwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOKJfSwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5594C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742399993;
	bh=RGZx4R+LeovWJR2ZIsFEGgdlyCtt4UFaq9xEAzWXxT8=;
	h=To:Subject:From:Date:From;
	b=YOKJfSwkLsT7Ua4Mu9MYXayia4EfqCqg1hfL1gDuuPC+7WdNAUGeHY6YVg/NpZTAu
	 j5sSsEl+gOwnJzuX9tN5fxQevDX7jVFUPuOZ6bqW/jVAWO0L+uMJVoy1uU79CFJjuc
	 gfoVYmaq4mX/io11mEn2BfP7b4e7ySMCJ9iAK526nNTQWN1r/I+l7lUYmK3Hn2buuv
	 7apiH+SF2rEUNjG9NpKScMBXCjTzLu3lK08+o8fljTatszoC3IVcN/kNd/IGVD79CW
	 iVokebtq/PbrN7dXugP30EGdQCJnF59PN5rR4om924/U8A0BpU2DG+IHMNror37cMZ
	 1U9D6PV3jL5aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99797C35FFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174239999361.31106.14326202623320984017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbd72b23362f23b83ad4f0eda0f75a9d7a0ee3f304a7875b855efac2137cae7f
Date: Wed, 19 Mar 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742399993
