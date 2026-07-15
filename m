Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D393D381AE1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784125714; cv=none; b=U5DGn+/+SyGkXPfKHwEqeNM9G6uTJ5eQxDjE28QJzGC0Ky/FkpxaYuYa8RonYItA/zwgfCGeO5EFV8vJz5AiSGKY7RmPg6Aagk1top0nKh4NCcpjLgjZbp1fT4QrsJ+QD5SlyJ0COh6iQs3sdz1CT7qrLscsl9xsK5fb9lYQygc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784125714; c=relaxed/simple;
	bh=4SdwIPXetLeBo4sTLasitsVGkHsO4qQOmKvdEdkUv1w=;
	h=To:Subject:From:Message-Id:Date; b=H8OEoPtfATZvAxarKDFOUzh/RP0LgLX62mHo9Hb7hsNELKot8iVZf9q0XdkcMSQqKawUZqvpANXyDzsTfw/Rp7z5toQjwKBR2BccBy6j2FjaaClt83alYEv4FpGX2Frpsm39fRZ4ojPmbb0gylL9gtaQ0JpJ/Skmsi++OcS7Gps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qx/BAGAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qx/BAGAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5EF81C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784125714;
	bh=4SdwIPXetLeBo4sTLasitsVGkHsO4qQOmKvdEdkUv1w=;
	h=To:Subject:From:Date:From;
	b=Qx/BAGAvm9U/z0cNCabZld0uoLNtuiy5x2i+u9V5lxS5pe47v4ywfvNWtDz+y3oe3
	 OF/bxK+xKdVGmPWfn2HVOVlnbaQnwP4HAGMl8iiHdhX3lne8JvMiiRELqjcw2z5aen
	 3YjtahyGzNzFLGYKsm2ytq8I5sZ4HmFxdgbfvUffHF3+usbRvEVMjU/YKPerz0w7c2
	 NgKI9V757Py82b2eHdKB62XBp59ePbXhbvd2jke7ljo9VRBfuCpoHx9FM+mmllsZLt
	 SWuhuV4zjJbTEJdZUTwQ6kzc/PKHZedAmzt7wBAtsNd6mvAbKQG5UWxTzu2Z8YvRsJ
	 MKiBE7+R3zDOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D8D0C44511
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 14:28:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178412571398.15454.17897006543894519073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f11cfacff69d827cd5be1b0b40793020e832987840041d06bfe5d84a3f88e33
Date: Wed, 15 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784125713
