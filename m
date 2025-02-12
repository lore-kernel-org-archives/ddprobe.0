Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE741FBCB4
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 06:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739342454; cv=none; b=AANnMXTzaXR3RmeSzR+tS/+dprEdelSak6iwnAC7Fm49XfYP6G8t13cuzQYiHzACib0BEyMzEOzzaiTWHZl20xgy0hutNenv6di8o9iRhLcFDgpj2R/EUe6ir3SW2WTyJaU1ayoTES26nY0oJMcCki3EWA+C1JVkmGXpCPQESEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739342454; c=relaxed/simple;
	bh=o6aR31Q9zrX/g14rjFP6UiCQCXWa/wnPldt0JwhsV/w=;
	h=To:Subject:From:Message-Id:Date; b=RlmHBEahIvMstgxiCZVVYXlLr0Z0Bde+u0pd8/J2sEOlds0OPS3cyAkYMD8rJouYNKFPsc89Lb2fQ/BuFo6WQu14QbqKcnSDR1oGt8NRm8DyDBqGqFtXjWn4IoHuE1P60dnQCunVmNNBkV8lUym5BAB991EMhCVHoBvh2KGuvsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HW3mcz6g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HW3mcz6g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1EEC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739342453;
	bh=o6aR31Q9zrX/g14rjFP6UiCQCXWa/wnPldt0JwhsV/w=;
	h=To:Subject:From:Date:From;
	b=HW3mcz6glgLbOhpVGtgCdnEzgm8Av6AnKcAEb2sPghnr1MXPGi+gabMVCoQOKfPJh
	 7mACoQ4N9nD58BUtO3ARIGSGpy+7T0D4UMzKbfSXcOyGJ6e0fZMLAD3NbGW1HmAaol
	 /UlFKmmx2nE+PAJUT6nmSuuJ+u13Y6NqjiUFaut6wxs+JVZ34U7v8kw2HS90Hr8UUu
	 DbvxBobGZ9o50LiGka9ZxW6JdptjXPmX2UdQLb2zFYlHellvDwjtxgXtOxvFKOFVJX
	 QhsuJCqxSCHpynmLPZMzUz9s7Z9baeqXGQtKFLQOeDVNBtqcnR+xFL2SnAIyoSXB0d
	 lZ3GN/YprAYwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9584EC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173934245358.26275.12251165802748512524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ddb2821762bf5765a9598e8cbe898d769eca2056f1a70f090ccf2bb1b9a6a7c
Date: Wed, 12 Feb 2025 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739342453
