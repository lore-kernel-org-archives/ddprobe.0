Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A439257AF9
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742801994; cv=none; b=eQQG5n7X0w+DIG5bFehr6f2CmbiImCWZsJpufWEkjqvs10k18sNtVtNbxGQsWqv3rBEOBuQR76S3+UGWwgPLutFA3jeG0aai94rpBi0TK39kmO3ZCEYPo/y5Hu5J0OmGsdvH2KlWK6w4VD6TaH0FCKuP8JJ1ABG+ZYzA0siuuSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742801994; c=relaxed/simple;
	bh=lYHNxfY4GGytAli8GxkSAq0HMc/UkAcs+Fr9EW8XcDw=;
	h=To:Subject:From:Message-Id:Date; b=YaUmx8P9QQIqn8iBM5GZFwLAQi57kAN0qxpaFT9XQ0xjd+9lzBkuxu/+tDpvsR50J9kVZk9e2JABqkKUbceFrQmK0uFIkOuQPtKSe605DIRoCeScNn47WxpnYGaS9eaU7VRq++kWqHUsOgFMKpxoW1fqb9lTtxFKSbUNWWDKY+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5+4MPtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5+4MPtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A769AC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742801993;
	bh=lYHNxfY4GGytAli8GxkSAq0HMc/UkAcs+Fr9EW8XcDw=;
	h=To:Subject:From:Date:From;
	b=b5+4MPtKp/gIYgML+8eR9sNYtbOjC/dVr51SKAgk3buMX9zs8s4WUrOcp5kjsJIMw
	 hSPlJ/jhbo6qvdcUa/SBRUVtO4xC7TbOE8vC7DFofIh6MlHWJ9BGdIUO9PxEcB9MKV
	 1B34ufZWsswDDHMtZNJ1opfgLSs15EbGeghaCXWswZeSd4G7HpQ6Huxkmb6wL3BjJO
	 dqFwXw8KvGnDZTF/zPiduk0UjneaZfCI/vy3iqkqgFYxvvrR4IEzPiy64lQFHxTCU4
	 1km0nR1fRspQih16fPdQQIMR8ftX9YeSUJot037hjhBP8UEIel59sf88/yRymfFwsL
	 nyvMVdHk6ptug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EB8C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174280199360.9122.13013082906176260336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a73587826b7ef2907054f9a82f2b655d02b26014193fd880b242c805058b1bfd
Date: Mon, 24 Mar 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742801993
