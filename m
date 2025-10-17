Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FAA312811
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760697594; cv=none; b=a52050i6z3YC3K2ggrU1Bc7cW7AnUuBqvpWfnSJ42VRg/TgxkRGNzvgoDU/o5+fuFiMkSfLVl+uiSHQfYX2fvkf8xvwjMX8vCStvgLsFPEg1ekIxZcye5vkQNU+xFWa2asrmHM6EFzQdBSvY1xiNIHp1GMgrpBqcaMfHXIA7i0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760697594; c=relaxed/simple;
	bh=u5KopSajw7LHNu+4ViVZdW+UR/ClIpyRTneHeYZQRGQ=;
	h=To:Subject:From:Message-Id:Date; b=PRNDVXkMxO1ZIhp8xZZaYX3LYusMQ65GEGs8a4ua/23gGgtP3HeDPu0GaMd0e8zveXcmM2RpYO2PsL7QAhUQcbRe+cL1Alc1GODaS04HcSVy/h6+wyPZ9NgR/hp9SxpVaBBEfnlRUJOdu79wozKv8LTOHecx2J0rbLm0XJaiFG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBGV9n/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBGV9n/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3769C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760697593;
	bh=u5KopSajw7LHNu+4ViVZdW+UR/ClIpyRTneHeYZQRGQ=;
	h=To:Subject:From:Date:From;
	b=oBGV9n/mwpodXMSTcqKa0VTceYpldCWRAEeiYkF225hH0uI9YBBIUjXXYPuDKeWuQ
	 tmQrfBqnp9/afdWkan8X9WW+8lgG58blfVC0/orRYqH+6WkrbwguBz2Itco4zuU+bd
	 GSXW6tSsRvWk9WgWIqB2riQy0IxBiMlhSHe4p0qsDKCai4PIhE6oTK4R+LnefVSw2C
	 L0aSvHlHS9WFLLMApv2VvplwwsfxAxLgvpniU0zqF46n3eFvAuZXYQpTOip7uFXVbm
	 JiddfHkpEsY7QKUvUUjJEYsuj6BwaWFJ2GY00R0Zor4hbRarvyf1u6vDvjgG8hUSoK
	 bUfSdvQEHrRvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9233DCCD1A2
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176069759359.20763.14396268322658548827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc0d40e537ed67fa4c78f9bb0b37663a899d1c782f5377b8805ed7e82d53375
Date: Fri, 17 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760697593
