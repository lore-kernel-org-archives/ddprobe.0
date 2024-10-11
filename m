Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F312030A
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728638154; cv=none; b=mfcigVSkot74CBKt5CEef6vEOoA9WpVmgcHLqn6H0sw2netbAYyMEBI6JEB/JF4sEeYyRtR/CgkexMTqNK815EGvFNXutjcqeSrkqyyC6FANYPrwvltvb+JaVew7UR23EaL3lvUbtLaLlzzkn+/Ydmhdm+dDWNcLgbDu9gy65Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728638154; c=relaxed/simple;
	bh=Tl66gRB5WLagNRaL+kAEg9dR2ibUdenY2OBohtAZFDE=;
	h=To:Subject:From:Message-Id:Date; b=M+YJJdYAudVjrS9dy8OF+NSRS46DJKq11JzYgNjHEv/M3lgZ/w/w9UK0jYbnAYd28xQhwpvDA6+kqJCwsQXbeOo3XK6nUtcjZvBS2LkjkNq6L8DM8oHLQDuKaN7Ra3lCMhppS1hzCq0Gnq/1aRqQgCoVNWWPA1JaiNBlUZeJnYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nopnr9uk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nopnr9uk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B580FC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728638153;
	bh=Tl66gRB5WLagNRaL+kAEg9dR2ibUdenY2OBohtAZFDE=;
	h=To:Subject:From:Date:From;
	b=Nopnr9ukmI1u5YPQzCVE+obqtFZGIiGcLruHc8+vck4krtakQvNHoLq2RPZ5NG0Pq
	 Ff9U/I3RpAeEs46wzD+dah+3CuiMDF586cd7obKhT42mk0z9yVzMleX4rMLB17xNYo
	 +k7T4ODAW/Wb/ukRWh/WLGD9OF44q2UjwkY1HkicZtDiXKGnuRohH6jDNUFRE1MzsZ
	 x/mBuBO4pZcfuleJ4xKHoIWLLWRRQSUQsSsuWm1SaUF8j9nIbHSWJPPsDpd28GRZ9Q
	 l7qDsnaC2yohle6P7DJ1OmT59nXU2JvHXoM2dYjDq7h0J+aD102a2XZxjO2uqgZZRc
	 QM38UPPUc8lfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03E0CFD30B
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172863815362.24417.125799452374932153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1faacd6fd8ae559e694e19c49606757784e8fa8d7cc07ddf52837b2d6cebd98b
Date: Fri, 11 Oct 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728638153
