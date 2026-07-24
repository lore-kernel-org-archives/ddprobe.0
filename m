Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0CD72622
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784910634; cv=none; b=RadquxBu1XnwBJboe+y7G0hGNw4f//9n21EcN9jb76dFZIbWyEXsvoeyKY6Kkgp83ocmANKgN3XCfTaEW0SF+ccNcGfYWL65/e9NHUFROIpzngf9u+TbaDH/P2cIptQEpy+mpjl9soEi0Y9Vg5DJa+DkXR/9hWBac36dI88SVds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784910634; c=relaxed/simple;
	bh=MlMW014LdLLZ2/yeeFBivy8xnNh/y3AvZCNKweHVpv8=;
	h=To:Subject:From:Message-Id:Date; b=rc3fCndYbklYx0ye3SpnUrn8CB+Q0KQh/KZm2oVMYMa41Sj20jeeBhk46GuN+eCc1FWtwKOi5WdqSmMDFb9Cn2WNBAikvaWXJw7l5eDuTvcQ4IuT0Gz68PoR5x5Gq6/Vmi7fFHxCr0ob++UB7RBgHSdw+p0/5YEo8fB/nV5KXdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWx4uY2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWx4uY2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C13CBC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784910633;
	bh=MlMW014LdLLZ2/yeeFBivy8xnNh/y3AvZCNKweHVpv8=;
	h=To:Subject:From:Date:From;
	b=gWx4uY2OftbTZn4cb3OTWeg8loiOP9qacwYWl6oiLl5ZeIVr754Jh4oCUDUWTZVEb
	 41RIc5wbexuaWITwxvTVwCr9fLYbwtYwGXnmm613YCtCfYMtCsqzvc/b341vbg+PqF
	 RGC1yDDzBCyDQ/IIL2ICSZnDicggsy4ZtzMIJym/jZKQEJAXDpLD3CbEBRkSM7Dh/9
	 AVxc7SGpsyuu22hkXZSvdZ/F7li/WKBF4sUNjJCgEKxjATjJoADuoPiKakGMP9oVec
	 305LUdyl6rCtw0XqC9qYOp5YMZ1NBqb1uNxV7XJBqxrgTbpFQ4LfmWixXXmwKLHZDH
	 VOqyGR/x7IQmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F3BC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178491063368.5031.11535020060385944610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687bcdf8981504e0f6411431b27a7bac6bbdf239a0878d40046eae9374932542
Date: Fri, 24 Jul 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784910633
