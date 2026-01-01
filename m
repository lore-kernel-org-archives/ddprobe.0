Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBD74A23
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767238434; cv=none; b=HnQUusuQ/+Q7MpGJ2u8+0s/rrhqaVx0zXv0bDpQJoI4VteZRtTFuh4Da5imdxiShAXL59gD7EBSZ+cDIs6rJIrrlJCWXQE63BEbvO8MhVaY7Nf9xjljRMp272/grtlnslQo5JVKTNudd0EK9GpkXG/ytnRCyB3whwipcHsWVzuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767238434; c=relaxed/simple;
	bh=zfWxPPE3n8odBbe+NgeRAnDaWUKB5aViH0WK88yNKUE=;
	h=To:Subject:From:Message-Id:Date; b=Ld0uaRkOrT8zQ0jro7o75ZTlLdFVkjUhyPoRBhEQTMSEj5cYEh/4wo0bc4oqKf0OnHITIYP/zwaNGW2+UASf7dAgmpPW7sDa2qMejAgCTm5q4Xnay9S/SkDIWIuERuQMcKnicmT1dd2ZCfbX5miVPwCkMgyRrD7AJwCuAjJocbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHxSYnKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHxSYnKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35EFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767238433;
	bh=zfWxPPE3n8odBbe+NgeRAnDaWUKB5aViH0WK88yNKUE=;
	h=To:Subject:From:Date:From;
	b=FHxSYnKsKEjEHTFPoRMsGvSWtCi/xWPoO6cfr7VMmnGdd979NcApWANoldNHjvr1P
	 P8oUrKHqjuJPRrvrr7XKN65yqAHINtN6iiFeOH9FCnbCG19NpRZ7YjkjUYylGXNnv0
	 hAQXaq2QSkjh+GvcqsDXbmXjR5tprMFPNVu5VzMdliXHjyPoXrvVcgk9hYJ9QP4DJa
	 TvmjSZBlYMOZcm3AeL+7tk+M7PLv1UfamMeeNY5fB2O+PlTgoOZjRIKVgkNvWt4IH+
	 I3PPyyLyjZZTyCENLe5/ez1wUkXN/oSQ+8t3o6z3+IxR+2Qli9bOQm68QptUMeUiVv
	 Sy+UMC7dNZmAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E9FE9410C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176723843358.29320.14264434273216027943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1481436a060c3e0b8bcb8a5d6d023065316f7cf103983812d7b9b065eabd1c8
Date: Thu, 01 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767238433
