Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33697191F92
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747148994; cv=none; b=B3jSrnKZHYVqP7J0pJzwxshm7VkWlB1R1Bf7TKE9iLjf4bax7e19aNRkkfSbQTiiSs4sfu02QY/Q2l8SZtkigq4zzq/nohzUYI+SI7lwZ+xlS2LGtX+1rVQKB70hKYzmPMtoqJhD1qSBcC2jkzDD5u54mUHsTneUQ3SzlTeVXJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747148994; c=relaxed/simple;
	bh=cbgUw0FDBGozRBKVahAJTSvS4Nz4gd8DE4fTsfddU98=;
	h=To:Subject:From:Message-Id:Date; b=XLVyOn+erH3+QPxmY0OdR9PiuxdGi4adez/KOV/5XI8Ikw9XiNmaFG0zfJxh0zxoIv4mCQUUv4k8n77rQGR4NS9v8GmDNfBSixOMNQI0dDJWZj1Kzev/ZrH89HH2jn51vRuyUbgx4hsEs2904Pjr3OtQTw57U68YMdB/BR8BjaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nm0dvNdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nm0dvNdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A408DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747148993;
	bh=cbgUw0FDBGozRBKVahAJTSvS4Nz4gd8DE4fTsfddU98=;
	h=To:Subject:From:Date:From;
	b=nm0dvNdPvx5RrIRCuysPdnWWCzGQ3J6BmUj3Cp7i0/EchGOymtnqQOVFB4Hk4D3PI
	 4JJUc9XBAh39HOO2V+xNqIAjNf3Io8PWsaiaiNzA4VLI+Mr6PAW2KmjhZDr5Sx2hZa
	 Prou09tG4q9jzBqPCYmBq42mpw/rtcAXEHwUl/Z9YxCVABTjUmqeEfydsMxw7ez9e/
	 yL08pFGO6wTj4bDLHzuGx9nImC287FYvchTgBBig1asVAYNP799JbFb/8ZO4Woctbz
	 rUmy1Rk6kBUZzd4Ef7p5N6q72pcJthz7vub3FUpjwUFWWgCu13LyduU5+HtGhttu8K
	 LuCtrXsV3xq6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90483C3ABCC
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174714899358.26760.9293410249153905770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 493e9f70637a371dcb9f03d9c5fc7108a9ae7d9562ab5ef94ef957f865b59880
Date: Tue, 13 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747148993
