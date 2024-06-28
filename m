Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7227B3F3
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719614063; cv=none; b=cT7xP/4hRwY694AlSjfdz+8e2TZMYtuiVCCRZ800WO2pWL6b6xZRhFmOqWHIiILN8A5G5WmHr1WH5GQGp/zImSjk+49NNf6SkCVAauvjRIRBPuMqbk+/2mGC3p62jRMwmC37sX+bZtzDlcIvgwakxsyKdzGwFuWHeToJ/GfL3mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719614063; c=relaxed/simple;
	bh=dpbvnzCXPr/tdXPJCYVQwm/ZSZXJZvPRHESm2YPHuqg=;
	h=To:Subject:From:Message-Id:Date; b=o4eNbElhLH33RNlckg7tki8zNaTOTyLwSJL2OtmuZ1m44TCjEO995ab0C3UFZleLdnqfEdFJRyHh5V+34oi+eKnp8yXkwxYKNVayYBwdP9kUUdgZc8NEJSE/rXgnKr3VIYfeEQGtRjh6UmVyRUWVUOSkh94W3S+TAK5zMfqfg5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDgMCpYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDgMCpYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6C1DC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719614062;
	bh=dpbvnzCXPr/tdXPJCYVQwm/ZSZXJZvPRHESm2YPHuqg=;
	h=To:Subject:From:Date:From;
	b=LDgMCpYZyAdwkumNtOLMWq6hyfOjY35DAFNDkHS8TKcmmC04yXc5NdWoluRaqU/Rw
	 XKQiRZF7PzkB83kYrVIh17eJ7Axlzdpju4Oo0Y8QaVXf3IFTemY6FbPh0oYDTZjG3X
	 w57gPEIAHhrcrw9uEiKW0HviYrpb/34IogDlVVSyNGRCDfyJEyMCJR80LD6EprJR/+
	 mSHFzBFqlqf+mut3W9sdQoLnwx8NuIYt12eYGeWVsgxS3XD1/y6LLVCCVqFxXkJGyg
	 6a7gkFCODH3Pd3m5ljEhv1Tb851858gEmtDXspFlK+L9vKdvC1EkB0yHh4wPOZJ1Iy
	 6NpZ7/W36643w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5485C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 22:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171961406279.8670.4362138400607575218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95468fad406b414b57dfbe71afe12abc48980bf567e75377134f4652630caf63
Date: Fri, 28 Jun 2024 22:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719614062
