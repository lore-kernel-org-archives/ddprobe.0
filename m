Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2119E21B9CD
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749279594; cv=none; b=BUs91iHuYabPTn4Q8IJUFjIfUclkQR9PkJOmrR6ufWfmavZ9pQqTf0ab+U/RPEcagvTl7BdPgnpP0zlXxnyjcyzMmLbqvhwkfqhLQAaHukVNPsW6C2/i3Z+/lHwkHtv3TP+Oi2/2RhecNf9yFBb2boEIXbE27PTOnF3FYIppsHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749279594; c=relaxed/simple;
	bh=fTT9fND42KapT03rMqsshSwtXOaRHnNpMBmk9FphYWA=;
	h=To:Subject:From:Message-Id:Date; b=PEiogAcgX1ZISlgAOO9l3ApYvJT47GAq39kky9Icx2K9sopyASwz4Hn4mFqTsNfkUuijn0kCJllsbV1Rz2fXyDLfijm/Z7pqXRZDGwbUEC/3IXp/S4fzHxSbc2i1pCgQTmP4ULqmYV/FWIt9a5hy08W+pV6qz61fyFIKJeaHbnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3LLrp+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3LLrp+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A411FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749279593;
	bh=fTT9fND42KapT03rMqsshSwtXOaRHnNpMBmk9FphYWA=;
	h=To:Subject:From:Date:From;
	b=l3LLrp+qf3ObwMBV440Mi0QCCiwcirHtpwbg+kayr7BAWmumuy0z2haAKFsj1IBlm
	 mCBJsJcoJZemyZwy4zFZetvp+bKgIajegNzLGd9Jx1BFIUXkMhB/qmn91SUglSB+tI
	 h4Jdva9rv3oB4MxWJEKtrf6pJsiPMggUA94AuAhVA5GrtLjBOl1cQpg+nvtTEGWfj4
	 QfiuGuOwFw0HQIXeK9bA+uzSa1QDk1Yt3jK/AJU5JFU70Ouy3fJ1AeVhvd8g4TL+fA
	 uhXcGwcM80dHAkZJINZvfxczEMueHZPgrNk30J+PxGUFnA3IWMSLS5zH7UF6Z3OzKT
	 f/6iiuCMyjUIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91988C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174927959357.32629.7548570918458796892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e587581af24ca8b8f959974671bbd21a4d88be62cbfee795930baeb4a92fe242
Date: Sat, 07 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749279593
