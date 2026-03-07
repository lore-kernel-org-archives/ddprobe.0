Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1261A1A9B46
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772922894; cv=none; b=cMJmr+CSAlaR++kfwh0g8Ix402iVhEDOOD6eG15Eh5L2G1IWdmZMkK5yBgqzfXTG40rpYf8UwMwKKtMqtUbgBHXO3Vm410w16QrXlPbKgMheBBBEcUD02VuZ+ozXirvV6A3jzyDrV5QEJCn8ZhAaGP0LWiIx03bzDqiJEtOXeTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772922894; c=relaxed/simple;
	bh=qGW0qKIdbI887F5OnnafWV75bb8IhJNvJeWXSMwQd1w=;
	h=To:Subject:From:Message-Id:Date; b=YpQFkASpC2wGsB+Bt8O/OQ8lwvhcKrbl9sS4qkXRgWD6XUVjyf9XqtDNHO+vRTkZVFYp0hKkUJousrw9A7YFuagQDKEB/pmPJrbzthMlpJArJ9Ps+eZPKkm2FuQEb1dHrVixwKE5y/OTp6j7cVQiRMtxevwErq/Ik+dhpHHj3nA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdyAV5K+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdyAV5K+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CDAC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772922893;
	bh=qGW0qKIdbI887F5OnnafWV75bb8IhJNvJeWXSMwQd1w=;
	h=To:Subject:From:Date:From;
	b=PdyAV5K+S4vFlzPOXE/g5GCPrKaY8IA0oKEWlG47+MphJizuoCFSGsFBzw1H5zW8o
	 h1PMBighkCuACNnXZyhQVjMiaEWxPzZMcL57PCMbOF5YpZ2mEDgyvMH+CxNtymjBIo
	 DTzC3UM7Bt3ir6Vge7hTLbAbFORLi1zSozxXRqlIQrYN/D54ovkDkVWLNNJdG53Ri/
	 /4djG2lRy+II4x3YF876zLVGfB/4hXQTmA6LafXQp7KXIcBxpGLG5ewSepE6ZgxNyu
	 JYiHXxrS477z3wDabzGMePkO19f0zW73h18K/w94NVE9HGP5ckjMPQ65yufkKnhp3y
	 ARVAerQ836IdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CF5F55112
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177292289357.18697.5497476084816848944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd3bcdaa3a5c0dd79e1ff7f51366e58337feeafd498672557cda383cfa840a36
Date: Sat, 07 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772922893
