Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FF214A8E
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752412794; cv=none; b=mxDtHvrlxbLprL2TajJfqK8KIQJ4KcCMovnKIV1LI8w7vbY/5xgQdHgMsMkW8VapDV7a4SMfhNIBYuvvRXHBrizYolUqkrTZqTb/fDWDJl0MxFIunluZuio9fF6uK44asC6AyPc6zNuAKqHLdBhpqLWSlxhIDavk17kkAM6SWRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752412794; c=relaxed/simple;
	bh=FD997qhyqGHQ5EXI+BYxHXE3gqBI6vLnJEMp5+w3XgQ=;
	h=To:Subject:From:Message-Id:Date; b=s/eohfHP3EgIem2jM62/Pn4fj3Zoc3HXON0QQGYjfat2Gw2wfxmRsUOyVA9K7loR74ebrdw43NZCuVeQHv2/2BEFhE0GmteyMx+9g+lm34p8eFHIO9+29vFO7tIMQr1HA63HgTp+3WbTGipZYhahYOGchxvAkKm4YB0/r6wNkvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qo6X7rlP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qo6X7rlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6194C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752412793;
	bh=FD997qhyqGHQ5EXI+BYxHXE3gqBI6vLnJEMp5+w3XgQ=;
	h=To:Subject:From:Date:From;
	b=qo6X7rlPGdoMLCUzkaLLfjtP53ba5c2oL0W0/xjiDzRYXEcRh47XbC6ofZVTIIpmX
	 SARJ0vBvo+w0nlQR2XDQ8AqnJIosVW3DClwuwrfwO6WGGayrSPS8FAE0smwS+PknCc
	 q90/XS7+omFhsnnlEp6jc4+GZB8PjF+G0Bgu/IAPlc+agDPBH4K5b5sLn1cJsjEcWl
	 j3RwCUTMwI6zXSznQ3I+Im4afhEmS38fPOF9nreZNP2FkqK5HR1A84CPLzqGD+sFn+
	 bej5zUEuqejK9Frp/vnvy6OerFMRvEKEJhlKhv27JK1QKcL49xOByT/S9VWNK4P6ve
	 MBX+09uR223xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DC1C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175241279357.24333.409747561889094937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc13cb5c0702a7c06649ea048c118525b50e1d8099bd9c5205670014508c49ab
Date: Sun, 13 Jul 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752412793
