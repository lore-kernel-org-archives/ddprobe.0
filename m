Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDE8D171676
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712335696; cv=none; b=uFi/xq3M8wLWvhI9Xsw1ksfI9er793xDavWqAI71VJ/skS2zSRRWsbuNMdlCqn38eCQyBgQPVBZvKjVEe2nZhSj77KhhKxHKrCgEg+8G/eHzLdgArNL5Ss9mWhp7REzdWlOtTXqUxi4lpLtQPm7nbHVB4QrRuGEsrM0LP9lvluE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712335696; c=relaxed/simple;
	bh=E9WFPCWtITxpklZN9DlNw9UwcRhygxZViuguHeqM/5k=;
	h=To:Subject:From:Message-Id:Date; b=VR/OycVmFMV+VxeK4x6t5ExfR5egZ2XVpEaVyj3ojueb56Vx65glWcCxKLycExHS/iVKka5Yk1sbVSe3NEiPv4vzawKS//z2Wik5BnQYz0oZXqV+Q5HoW56tWqv/4TZ/iDhL02agFRcmD1/bMNTwVbl1EqKUgPmnF0JwzKRheLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBhXXbaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBhXXbaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B280C43390
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712335696;
	bh=E9WFPCWtITxpklZN9DlNw9UwcRhygxZViuguHeqM/5k=;
	h=To:Subject:From:Date:From;
	b=XBhXXbafNYOXiqCV4jSZfl4qqCvkLHxENIYUZZJ/1JVd2PMSTOldKaYz/LDJkGacZ
	 Ho1oZQA6nJ1xDTEsNi+6GC81xATAfI0d0EZG7IUhRojOXGHLI58l2UggxX1QdG3mQe
	 srjM10yFln/VnO92yFI9HPb41lQFk9Q1tNQa7r1hyx4hTJKGO+zLrMWFnSNxWTANXx
	 NwzCRUbOnfo3ZD/6LFOhjcliNKsYgi0rRuwJ4VGTlf3ylA/wyljq7zPJWXsacU1zZW
	 Ps1P2giWhmFnMaVhNHuzDriQ/A5O8QwZmqDP6PIBr8FG3tB4g55SVhWFJ5R4J40ea9
	 sCN2JZkc0ppNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66FECCD11C2
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171233569641.5480.7071982273401786382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdff14d45157f5ebe674b1529b6b40da47bd13a67fb93806eeabff4b77b9a510
Date: Fri, 05 Apr 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712335696
