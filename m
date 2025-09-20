Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0DE18BC3B
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758362394; cv=none; b=RpqU1HwyoF671QdbxX43+DG6mkfChYNbAXih1YsC2t9U8VVJ78+Q7xIysJxfH8bf5Vv8+BTbfqT0fhCUTT/d2hNhG/W7kEoJkR+/UNpH2ic2ywK/kM2ZdWwQytPRUqfXaCDeW9HV0vzEkQ6Mf0/OCS9u29/GaFVqJUqMyrJFDlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758362394; c=relaxed/simple;
	bh=T8ph1UutQe4u8IAK6Y6yWiEw79G1VRrJZhPO9sJ4XUA=;
	h=To:Subject:From:Message-Id:Date; b=df33GUcnUGpUpajjHetXy5fBYhN2zWruIOQZZMXLUArIil0vhxh9kREhkQVLbqhchTaS5taPxLyPOjjvlMRRNcM4UmudROGCQzACn1pLKDeEy0et6emMheqxYHqAd/b971DZOFcG4YBFtdkE6bkwhmkcs8HAGWo1Ad1hrT7z5LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATxl8GwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATxl8GwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3A6C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758362393;
	bh=T8ph1UutQe4u8IAK6Y6yWiEw79G1VRrJZhPO9sJ4XUA=;
	h=To:Subject:From:Date:From;
	b=ATxl8GwEWiXwZ3AqVaoTrvfnoy4TdUxaXdd6w2VINZ+piKJPbRD+BNAH1gjG6LIEr
	 rAdhOQX2lrBqI5ctuhtlKT+JAUPwqyB0M245SxZDfXnMViG9I8ko1eegmlsOybKUgN
	 iA1USYbZF4iQstUOM3NIh21BKOiWycQEuGZwlqtlIX+cVMuCsmgjq/+t3M2VEKXQjd
	 Zvjrp84VjZuPUBgepRIbgAoz+nXYLycEnppAP+YW2ju6CnpoxoZkvKsAqh9MDNnkJO
	 iysC+tz1JF5TWMY94hY4fUTPuHvAuJ9lH21yrS3cz5NGt3j/ZTiwe+UDyYJwwLLtv2
	 +AEJi81IVjYCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96980CAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175836239358.29761.6828782126551137447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90eaf52c72407ee8c6b893da4d7529ef003f969781d01068b5af198141795fc9
Date: Sat, 20 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758362393
