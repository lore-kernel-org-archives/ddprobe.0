Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEEF26B2CA
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746635994; cv=none; b=NUkwgnLmDLat51mjHDVWpa4mDU0rPhUrlQtGhI1FXOlo6IfmhxQVsQuWs5YWhhH49kbRsyIDjiViTYW40E5z7vwaCOwddbProliazSapCT+E1G+UfVEi9lTvu2TQRZP7BirEzpVpTuC+COSc+irlORDJfOeNGoerWxuZT9WIDnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746635994; c=relaxed/simple;
	bh=4LPH1rqOlx5jARvn5Wrq8oKqZW4x9ilyvPBcJD6L4uQ=;
	h=To:Subject:From:Message-Id:Date; b=egDdYm5Rx7u6mh/aUhGl19rDhUfoiMb2vRwfzTSUzDW6g8vKrKKymjR+eO0Df+3VUFRnm3DBZ1k2e/eoEfQMuVa1orc2jhb3mk0HyI2Q+FeGc7K3j/MylWycS0QJIkqRDGxAZJRQGu0UEQ457rv8+D205S+JmgXbBug9jcrOFWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXuoDAkg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXuoDAkg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7D5C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746635993;
	bh=4LPH1rqOlx5jARvn5Wrq8oKqZW4x9ilyvPBcJD6L4uQ=;
	h=To:Subject:From:Date:From;
	b=LXuoDAkgk+lQr1oR31iR08CJCOU8byxY0H5wSX5lOu8ElgrFVUQpb/fVVJzj1O602
	 oocOEIqx2VuRc3NFxAG7H99izB1828XlIIOC4od43xWulbX8UlH8L9X0IJhTeIoJEU
	 lQTMsgClUxkAgB1QVHwahwpqVR1bEbPkNNJ4KXfRWQFRQUlgMuWHRNKjBVEXpIbbbi
	 uu/6GQMQLEz5LdD21FJOOp6Zo7BlL/7IT5caxLHfLZH9He6dpjSRqR4UNO8oA47iIH
	 SMfj4RiW2Un54R9qVblwrOM0tU5ZlNYfoChARZA/KX1+9BAFKe7vrjeJGTa5CFfqT0
	 6Le3AO+LMWCDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E344C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174663599357.4956.6548523471601922234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49bb7b266358333b141b9969359b01076c3866fca409c5de0499a005c8053e33
Date: Wed, 07 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746635993
