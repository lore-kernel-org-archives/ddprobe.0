Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC10F2D4816
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776422254; cv=none; b=Pd9+TFtq/QgQnglbHl31zsAUN9Mn5+LYFTQgKujpax1mgDEAv4ZkCoV1MrrYRhKf4yl6JNrbWKTgNIC8l+C0Qqvr5dOVk+Fsjq8yM+6du36XzSL2D3QwdqcGASct6+GBWdVQzIGRf5CPS9RBMxvJnMQojqk2q3hmVxvN/+ItDjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776422254; c=relaxed/simple;
	bh=9LuiBGK0H7wZRf8lPm/8Fo7TjCiR1q8hZrMb5AvBNes=;
	h=To:Subject:From:Message-Id:Date; b=mlj+haM5u2c4OirUwPe+D3icPP3PbELNJSIvlmOxpuvOeW7ji7873yo7cLLsRexl5+l/+hsUlhyam/FDtuZF6D0LtOLxDkCFzjbFiQ1OINq16fjmZb1xPirmsPKNnYUScdiCmKoblqed19xkEQv8ce+/KM6uc9+x1taVtcezEx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/CsNPFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/CsNPFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEA1C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776422253;
	bh=9LuiBGK0H7wZRf8lPm/8Fo7TjCiR1q8hZrMb5AvBNes=;
	h=To:Subject:From:Date:From;
	b=l/CsNPFtsZWXlYtUfznkb8D+739U3TrYNsTOuMx2f5Ss3c3TDuouT+xT+Eln5BPVK
	 SCcoOH9mknLcKG1BEvMhp/ifVdqhrseehnB0/d70sc1fCjmiudugD1oKsGbJZ0ZhGe
	 FXAbEh25TP0yPPH1BQgfrLFdeZRzdFU4LESny+ZKKZiDaapO1JP2Vj1o7+bVWhalOo
	 929edz9I13toXo1Dj0TohOZAk/v6awsrA3Wz6OpGMZzv9vXti3LjLoXyO0FSqUyCH6
	 ujili6o2PXJuOf/9riyUNs+H1lsT/Ah5dfW4YD0KXFdTsJD+k+ETUjaib5dCdzb9xb
	 g4jDnaytV8fBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECB3F4368B
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177642225368.5846.8972111183714185830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c5c9af95817e3a13983b1c43ad9b82252d65c0de1b1d9722316a908f387b094
Date: Fri, 17 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776422253
