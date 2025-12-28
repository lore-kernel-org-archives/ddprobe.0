Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A656208D0
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766888634; cv=none; b=uJ+sjzIqz8IK8xVCbfC/dUgTglhwYP8JRcYRYsRk6+Fez3swo88zP2kwUZxLurxkraCIvIBKg5/TVCJD6zow+yD9HfzAb0pMQpdNrYESbAkvmxe3D0SiS5QxEtgZKhLV2pqM1xGyW5EHJJEuWv9T9FwTK8iQ5jknEUy2REEJz0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766888634; c=relaxed/simple;
	bh=y/8oNgOOZPXXL3/CH20PVuK+b74MO3hI+CmDOB3hQQ4=;
	h=To:Subject:From:Message-Id:Date; b=m9Q+SAnFOhCnvrh7kMCgWKIHl/xhd40ERqlGjTR84vwupZ2r7Qn1P5KgPZjSFufy9ekiawEnn2FG7rhigacAlklCqxGvjBBiNqG4lh+WAupWPqwKSiCWCVMmcoBEnKQLf9d73O8w5Kjsx6j0C4fNwZn1UogsUnvb3NqcQVRRNFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qK0APiAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qK0APiAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B1FC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766888633;
	bh=y/8oNgOOZPXXL3/CH20PVuK+b74MO3hI+CmDOB3hQQ4=;
	h=To:Subject:From:Date:From;
	b=qK0APiAjraYiTKYE6+Ml3R57PjqAQL/7WfHYUBSVqX2lDosMp1JvH23ORLp1kF7rC
	 2OENp8oeNolrrZ9LXKiuy5hMj3o+Kcso1ZjK2Gi/AI0w4y+xOfvMtki/Pde/mayLNw
	 GyJXEcP6U4leAeRtlQoH7J4iQOwfj0J3XtOuF8Oyt0NmsogBX27KyAH6UkuChYYVku
	 PCj2oacduzGRTk2nhxaq9mYoz7LupJCy70jgkGzX00bLTDUKxnyiTUJ5XTu4wwugpn
	 dscmNbruKXc3s8a6BKmOu6FuT739xcq2sJfIRpy1x7ogGnmupvjHho08ma8eNpmF8Y
	 J+0000roFOQpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1E7E9271B
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176688863361.28064.13875343145420816898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb272ed42dc06b1cfdc43355429d92007bbafce241c6934657b4fa39c06d8a19
Date: Sun, 28 Dec 2025 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766888633
