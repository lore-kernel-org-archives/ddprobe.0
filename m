Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E481025A62C
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738704354; cv=none; b=IUvy1UKZ0lhnHkh5xQFM2MDG5E4TtAuRxAzje+Mng3/UDLr48ky2TqVlvKXE2E5HF0DISNz0pXt4NZgdlSy88ej0Bo0pV6Lm8f3FSp5n0WIQ4fqWS4V/2/1ZLSGqkF5YTGEeM/pwsmlRjjXGGcJMoTuuRzzu5K4LiVbzKnzXE88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738704354; c=relaxed/simple;
	bh=GpL3ANW9s8RKU/tKfY6fqhIHThSqCGFlg24MP5qbdlo=;
	h=To:Subject:From:Message-Id:Date; b=s6yVAoXVrE1YEbmt/Dpyj1VPjmjDo8Jc/+TYQXbDAvlm9EvErlpk64WEmso6vAsBAdrIyphgRWvuosou7AM35cu/FvhW5TeiJfh+zFJeJe89n3qMyGGCI86s8beurNBW3DDGj/luVcsjrzAd/SIKaz65vnNeRaBgHHXt1a7n3ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3ScMtF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3ScMtF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0E6C4CEE2
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738704353;
	bh=GpL3ANW9s8RKU/tKfY6fqhIHThSqCGFlg24MP5qbdlo=;
	h=To:Subject:From:Date:From;
	b=A3ScMtF9ZMEPseSFiRZa+WZnhor0mE0ztcDkTmhHx/t3MkKGh4MFdEkZtO6NAsN89
	 Owej5bFkRwIicary/XDYEtcFS1L0y38pNBNxvQwmZpr5T+O76zmLgqP0zVnoIxBc+7
	 1gb6XAVmgVQVqzLnOuY1reH9PhUTA8CU4xOXcu9T9ARtiBFXepHPHiFXDVTYN8tmoH
	 wPJSXJTM7F+N6Zq1YkxWAONAj9YVWE+EApNxh0nrTI+nw0LtgfrqmNJXBiMevIwsqD
	 Wwg8+2/C+nyWrk0ekVPDn6/KeTf0XBnuh+TCRwvDKQHbNYGiT6r6L/v6VvPfVlliDJ
	 EA8wmD0oqyKEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D8BC02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173870435364.28672.7875142869642207241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e7e07f3e08cefef1802b3885f5fd38465037e8d8a288948b55aa7b3fd26c14
Date: Tue, 04 Feb 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738704353
