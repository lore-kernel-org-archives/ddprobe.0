Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF958460
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751209194; cv=none; b=rO9yqWIzKfwaXJiXeHOL7oQy6ESpgZryxNszFb1cwgnJFOT7oBbpAUeUcpzfd3psNoKYF3tzF0vqpPmhvBhMf0+LkMQwoh835WbO6LJ87xgCiIw42YKtUJb2WKmHzq9LV+vSTReD64k/E3bxqgp1aua5dTm3BfHJbqjmikP/nig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751209194; c=relaxed/simple;
	bh=zENZyQk4guNLj2Fm1No4oR45TiIYxkPiZJDUxgbpdM8=;
	h=To:Subject:From:Message-Id:Date; b=ou+RjenheaZ308T4bRUVaf6j7k6ofTt52/ZNO7dwVDlYAGSSh14fYSaUroNwycQ2VmMpWtTQgrXo8++nqrOSIlPcGXlvVyU9AYdTP7zKTMhGEBdlaxQGYH8zSvQSrfza9ThHULngDr6ljdTOqEGtgbwHon25uF1r066LfnS+ARg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sglwu+OZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sglwu+OZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DA0C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751209193;
	bh=zENZyQk4guNLj2Fm1No4oR45TiIYxkPiZJDUxgbpdM8=;
	h=To:Subject:From:Date:From;
	b=sglwu+OZ5/tnwUarsE7BisqKz2y3lNroesHZPwHPXiAcKttE9vrYI6kUhGth8tezT
	 UxUe5qDtYi08u5LOjasjvkdNsNc6T0rSjdPE/bnZ0RpxeOkBQ4pNLI8YCVc5C9+sLi
	 NWcStWbsLi5Ux0GQyBBvXDQdxwdLwBmiPsGvc6hDgpupsFjXK5/yjY+m1VWa18sXhf
	 5S0V32wfgNgXWQOEm3c1Fr/C10KbxoXxhE4U0zOmrtUe72HlwzlrWhTTLHl9n548cq
	 97PCSXHvk0F2GVzmaNYbbF6vIbszMPkJChF/qdz6T3w/5ssFTTmkzDC/KpUVepwAnd
	 Ik3f52fHLTorQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EEBC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175120919357.7383.16372329269495189387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d953cab1ddf920fd9bacfd794601af08f2223c90c4d37944771ba75ae90d6da2
Date: Sun, 29 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751209193
