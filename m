Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DDE2741B5
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333494; cv=none; b=uxVCVpPXpgA0NkhKoKBMMO4ZQV8EcVnSg/LbrbbA9uy0eh8izER6ws5F83a5OPIVEYG6I903mxBtq9LjRFzrC3aA+kUZoReCJ8gcwoIOGCLZuSS6oTzsRze3sl3gLqVJLKVvt3I+GkZGq70iHN+rzPtlg3dYzbd68rc0ovgYgE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333494; c=relaxed/simple;
	bh=GKe25mNK2z4CWSxFR+OxOIgWBIVdJ+3ptQU1TZaMQwY=;
	h=To:Subject:From:Message-Id:Date; b=RU8OMbzTdboPpy0GwzBuoxQ5SB0DCdf2U3Jb8sGQzMivd2CsQQ6Mz0WQ7tIJuqdLIrLtYOqdzFBO2FJBQp4IfMI92UJ6EupGihGojHXPfvEtVXdNw9QEXV1DnDrZYJkaMOHRkrR191KRXgHxzK+W2sdrSUY5cvVy28QvT4CRWKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GW0usloD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GW0usloD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBDFBC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771333493;
	bh=GKe25mNK2z4CWSxFR+OxOIgWBIVdJ+3ptQU1TZaMQwY=;
	h=To:Subject:From:Date:From;
	b=GW0usloDUlOQYycJx5wQ13W1l9sIGDOolWjqo110ur4M++Av0j88pzYtnnQmnNh9p
	 /JQOYyFyUUu0ddkQDK9ZBb/LEPcb8Z871H5iQVbR7x2RZKjGEwOoDrE/eCdwMYid4N
	 OdnC/1rQ+3pBXuErY2HCQj9hj6nEteUAmDP/Rqx91ykLail4IzVKW54S+2kn4ylTvR
	 /RgBT8/7Y7J1GDbDvI0Oxt4xA0cG5UG/jev26hRBKQuLhOPi405ASAu2RRmZUf28br
	 dwbty/Sy0lf2F1RvQ8Zj+9dFDamJW+xdA4Hlk1mtIwRTvhhXOPzfqDK3fRduOaO+sV
	 VmH0QHD/k2SjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5EC7E68171
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177133349359.27182.9482580037294151240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8879abbc750829d5f91b17518c35bb26ab8baae3e59464ed19eb39eb4e96cb
Date: Tue, 17 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771333493
