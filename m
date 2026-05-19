Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410B5E54B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779207634; cv=none; b=cHB0D7osgUlcroQEe7aFSz/UIAMOmTzTcXWxkP1rrFCnOTC/GAMtH/AeVESEHSaIpZWJGNkvjTBwwLg5BRC1FH87lY4dRXiRcade1yLj5F6/ccCesOS2tG6vePEZezBdBrxScx2jasPi1cFViDTS1f70vQ8rEU25t7T6zq+PiMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779207634; c=relaxed/simple;
	bh=dRZuG6JH+uLRLidYY4CmbHgR/684lkjwBDPL1JHCHC8=;
	h=To:Subject:From:Message-Id:Date; b=arRoaJol+/Pol1MdeT98c46TDxmrGuuT/4EJwWnW9XgyMs+YrFh1NjEJygK/fEurJ/DCvEmcBiZcO6CAIsZVYCk62qJQ+0U7PVg4M+nz75lAsvy8p4r+wJtanFwQA7TmpU6EQFgZYOkTNJuxmEOMWrEVtW6RSl6pFZoNHhRlE+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AB3Mnprm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AB3Mnprm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE395C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779207633;
	bh=dRZuG6JH+uLRLidYY4CmbHgR/684lkjwBDPL1JHCHC8=;
	h=To:Subject:From:Date:From;
	b=AB3MnprmCvMAQr5I1JmlA8UBSI++ZF9kZcS47m6ZUPEeTuqL/W6Iir0Ns5aCvuiIh
	 b4Ct6kobnZDbuFJhdXPe295CNxEFmxT5E2wC3QxoczFdQu+gyTlsqF+SLFl66qN7ti
	 rCqhS+n0HgZVgAWixC5Su/OvhEGUOz31LgS6fCfB3/T3VPQDcxAVCcJHEC77kGb1iU
	 FC0AAfvMwGWUVbJf7PtTwtAqOZbihQuU2Kah5fBUuXodqceKoNJ08t8ItEACHOQXcK
	 MuWJ5EVKqcHne1NVA+tOSPMhJ0Vo58zF3Hx1BvjMenW7Ro48EuDZa8IcFqi0jt6lEW
	 uPc3BDyhgq9Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC00ECD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177920763375.6232.2006032387759560574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9ca4a90af81daaba811aafde79e9d10042aaf22ec05b176bc4744ff7ddd7b4
Date: Tue, 19 May 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779207633
