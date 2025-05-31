Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55BDC148
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748722793; cv=none; b=TLe+PnVAohCfRXhv7+G8vM1dtMVOR0jEk6ws8S4WxyWBiVu80XsLCQeIVJNo8p4HQEx4B1HTk8IUwV1PF8pxGkW/1cgUYT52UJeIjvM//cJU1a5otlXaUL6RhmckpVMr7REgzmAtkPNpUhj3+SGjGTQMBg1cE8ZtJ6RGuPPx5CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748722793; c=relaxed/simple;
	bh=CC/tvV8F6SfdTocIsxhi+8UHEsmXwTWKnqaZvT25Fq8=;
	h=To:Subject:From:Message-Id:Date; b=bLfAt+vXlBNqwtlJjb4TGzLp04CoOP56tm5f9zW3RnlHfqQuCAemWZMhuhNig917bSw87WxVjYg5QUdyVDWam5TBY6393TT3gBkd3289nbTqTEoe4tXQwZbtEcZ/YhVPmT8id74dKmC3JTjVf9PQVDapYaresm+hqEdJZRFsFpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEbShv5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEbShv5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A388AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748722793;
	bh=CC/tvV8F6SfdTocIsxhi+8UHEsmXwTWKnqaZvT25Fq8=;
	h=To:Subject:From:Date:From;
	b=DEbShv5Qm96ynCNPwJRg3NOVI39warwYzB9u0C+8vvbdBkQLTLVjxwpk+BN24djd4
	 ScIjQOtVV9JUorTqvXqUYj1J0PHonXIait/qPiR+dBH8aUTRIB5gIqGAZpV4KTVuEt
	 LKA/MmWrXGoNJyMtw9oVsQ+p+ZNb1keUs9w3uJ79urSaSarQDLvb4aV6zv2hJLYrJy
	 00IpfpUo69d1zMOeh9W9Dp0w2JwG1FBnBla/3qq5lvRpaphfFL4pPzd8PhwDkOZO6k
	 6YBo7Rys/MjOp8mwNGtwiS7SCjUuGEcfHhGbp2sZGN6ljCxYFyYL1xV/SU31jbEptW
	 eZtcXWmnM5QKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945F1C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174872279357.14544.14712474598019233082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07f5d0f5aa907fc7f903c38d7515312d715b1b512e2ddafec306e4cbcc13c2b
Date: Sat, 31 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748722793
