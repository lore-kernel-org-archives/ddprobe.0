Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D142BE65A
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754910594; cv=none; b=nCqZFNG0XintXXpo8HlGbp6JNpFlaVIkcq/53poBiG9Qpkv0/d+XA7g2fEr9abiuD38qHC8U2XVtC5cqsfst1JL8ZwodQKHOc7jAryxEJiyX4xP9P1ifNQhs10b0h6JmjNaNIHmtaXQuIf8w+HCSitbqu03PkMUQ9yJk40quSZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754910594; c=relaxed/simple;
	bh=/hzUKkF0EBE3xw8jkE9vJV6sPtCOnQ3T1UuTknfIXh8=;
	h=To:Subject:From:Message-Id:Date; b=s7vh1TRNcH3/Bp7z6+4nwPF5nf0DAtc81tW8jmvRTrgEXwWKVdajRh9de//m9NjSmpRgCmGWxZDK1H8Aijn/Vd6caehYyGjtKjPWcpKA6Nc8Zz2pkhgGHDdwjw9MnVeHaD69ZYV0XYr8Ca+xrHdQDOt3Y48OeyraZjC8ad47aWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmYwTvLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmYwTvLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC97C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754910593;
	bh=/hzUKkF0EBE3xw8jkE9vJV6sPtCOnQ3T1UuTknfIXh8=;
	h=To:Subject:From:Date:From;
	b=rmYwTvLtLtHDnkbPpY08YB6cGtAGi14PfExnySwLZciXKrJcv0uLIg2Tg612FcrCq
	 Pp/Iv7Xt7k9ne2LsNjyZJzELucaqgiQIB9kIkMfyAFi5LabJ+7yX+WHhqjDFKvidhz
	 9oiL2Xn3Tqr24NNq6fLDWI5kMVr7XbDkgH0IIIGvTrtp60rO0A96tf4qxkEG5bbwTY
	 TC8xJXDkT414BNRFTv5nhZNso8OqJLNQnl+g2cj665Ihj/JZS29YsLRKyi8llRV7Eh
	 +nLUbeQvkOV6pld3LcpsCy/UKvE7xL7vpNFKRc3/CKsqyvvkxwX4vi+XZKjf24S+H9
	 OK757XfGlm+uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCD5C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175491059358.30753.7895374673891128373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f511b8db586b9cee68edccfa1bb9eeb49a9986bff61fe6d7a97803d832293505
Date: Mon, 11 Aug 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754910593
