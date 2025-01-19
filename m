Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C4E6FC3
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737288354; cv=none; b=DFe6ObX2P5XX4bytIISUyswaUnKu2k4ruCqyj3rKakUjCCMb42jpCkA1Xoh2bHc+SY1eAj/Z8OdwQljI1tv/HW6QA8mQjka6GrxR0rRPU5YBenjPKDhn7Qznl1RBzvj1NS10d2PafxHvFDnRihk6G7VV3mnDrsFVj4SrF5M/YrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737288354; c=relaxed/simple;
	bh=xQW0ol9ho+z/SGJ3lZexIGFNXEJkmRaWYeTVvEvlKQQ=;
	h=To:Subject:From:Message-Id:Date; b=jV7PBmZGsLw7aXOiYZ/DGxDziZ2o69u9VG0Hf2Fwjhqg5ozP8RoR4a2gkaYMvgQ6Qx2vQRwqF4rww4ZaS4zCZg7uz9f8wf4Ca+mnOORdH5C5jhNXq8kyNDo3SVY8h8n9bKZHAULzqIQSyT3bZy1ffFa2aw7jHw7zOFvPpIfWD9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQWV+bcV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQWV+bcV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67D7C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737288353;
	bh=xQW0ol9ho+z/SGJ3lZexIGFNXEJkmRaWYeTVvEvlKQQ=;
	h=To:Subject:From:Date:From;
	b=tQWV+bcVzRQNDB7cqpBIGiESEO02LGp4zVfYhRMjMlM2UCgimz7TdFnlE+1G9Lr7q
	 rXLSTW+6AhjCiBlI202isN61J0CrPQrrwb+jv+b1AbixgeMiMLuTleFGDom0B4924y
	 5tknRq3A1Ze+wsSDJauQ/IGGCD6+sJKWVnLtR3T34qar3C6pTvDz9e85yvlPtM8tNg
	 AKhKGLZG76z3yM0rdKR/Lm8uoO1lGG0gQKA0JNve8N1MR5FDvL/xJtxINd5QgggBeV
	 +pmpS44aWiwSoD/8krCv1i7PVJT/aG811LQBI7zqo6Tg4p2QPD7brsNFWTxpVOQMjC
	 6cRy1a/hqJI+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DCAC02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173728835357.9467.1306260046415590606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97afc8914f38dc52e03cba68bd3df915395a5a8e4dc6e1a06116fd4644e9408a
Date: Sun, 19 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737288353
