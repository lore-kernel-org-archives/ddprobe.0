Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496931C84A0
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765711974; cv=none; b=VLo3vNFP2LD143/yv0kA/mL2Ior2y51FXr/TIctqKsdSXs3Sk8sh1mcfitJttJ+gbQ2QZPtkffUKE+oro/vKUWcxm5Rc4WU0fP7DA6lPhi4ORlamSBWCmE48MNJeylTthfn0qq5A7DAYL+dySn8hj1vWZJEvyLHeb7vCmJgCmDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765711974; c=relaxed/simple;
	bh=r0v3KhM/nulZhSUzSeNMo2JOo6DkYZNBsH0/EXdYPB8=;
	h=To:Subject:From:Message-Id:Date; b=Y1l8ZyA0NJEC0/56o7/5tFDn1H7WqiKhRDjg8Vz/U16lqfi1H5h5B9kgabx00ndtRXr1gKAWK9U7Zfjkyxn7aDKPipJI++jnYX0xX6kAzUg80CmIbuVcE+SmAHBQ6geA4U+i5uHw5G76KFaLz1ty6UNcqeB/rpcdexYxkWxvi+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2j4PpfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2j4PpfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8634C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765711973;
	bh=r0v3KhM/nulZhSUzSeNMo2JOo6DkYZNBsH0/EXdYPB8=;
	h=To:Subject:From:Date:From;
	b=A2j4PpfGKrozC6j7NTIehk3OQFH/Fw1TTQ6ROa4aR7kXgEnt/0QbLBmVxzRlNStsc
	 3FU6huwVcF92X/Uiv83EuxU53ywpY4quDqgE/2gp+6+b5qdyx3x0jPK4TmduTh/iBP
	 DLjXxnNCeOEllV+EMJ6xcFxONQXX2XfQOAXO95wF18Qup1r6k211PHsd1FfYOcbQ1w
	 tiF9WII0RuGpjeB5zHiAmWz04wXQmqNDoyAQlH4kklGLWXmp86abMG/fiJ6x6QUx8W
	 Ywm5m+n+TbjioBFxH6WUJeUF/CmA0SGmGiqNgtOdLALMfGNu7wJxJa/dqAUO/yoC9t
	 x8uzycxX/Uw7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1277D3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176571197363.534.7014143163103705875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e33c9e6b39e9f9c142b3d5ee7a56babe90cc2f42e228e8115f1b1df6defa59
Date: Sun, 14 Dec 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765711973
