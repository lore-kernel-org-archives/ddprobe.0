Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6C423D2A8
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746814195; cv=none; b=U5UI7hBrhMCX5PL6lRbj+AQDFVgQAyW/0HAMuibiXO0YYy9ZZgD/YtdrKwJVrUN9kLbN6SiamXc7Fr7AajLXtSl+APFmILf7Y6OLXC1KHKVHoz+i+5ezcfvsSasjBlcuTMaBoRuqEj8GN4WUKv/Re3U4tbfhXWb22Mx3CPr17Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746814195; c=relaxed/simple;
	bh=+O9jEW5Xq5GtByX0XglmVsBzSWo7JfAdGF6KAhKlLE0=;
	h=To:Subject:From:Message-Id:Date; b=XdXggEh4ah7+eKYxYovpn1l7nxeEkxQQ1DGUhMI9IZzPdXohLigKvI4hqhstpqJdPptptYa0a2ETJzGjeQwc/YXq+IDkt6QD0q5p3HHYuqdo+mBN8KINgWWXDTM8Hk74mfsgDM57hMgY+J4Xh4ZyWu7cuVSNDWLc6cVyBGSSKX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1yMY3/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1yMY3/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A055DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746814193;
	bh=+O9jEW5Xq5GtByX0XglmVsBzSWo7JfAdGF6KAhKlLE0=;
	h=To:Subject:From:Date:From;
	b=p1yMY3/Yx0XXsT9qTzlXseYgiTSSjA1luqcmtrbDF7eytbPaXyN/yTHJzkROeSOJG
	 3LY3bzkvzLApVd3Z2Aof7g7fqcpBxk1N0WVYKtrDvVPG8mWBhrp87eMbDy7cePfWu2
	 CMP7pkePoblvxcsZEGVlIi02TakH09wpZs1h+4REjumhDYGih7jhF47244lY/V+0UT
	 7qGBFyhsx2bJgD/93wMNkwxFHhviKkHklIN9IS4ekR+W+sFCgst4J4DtBeuruNwz3O
	 Ip/gNCdohztl01EQ7QuPVn5CI7iBiaMKIAGa+UAI68ZtVEH+I0WwDyaAC1+iQf+wU/
	 bILuKiUK4Cj+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90221C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174681419358.15642.17350454354978396770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbbb96c3335bd4c52feec5123ebccf8c132abc8e157e7ac6512ba43d39d506a1
Date: Fri, 09 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746814193
