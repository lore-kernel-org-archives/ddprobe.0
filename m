Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247E836AF5
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729137355; cv=none; b=J7LqUtq0FTG8CH0kyDxm+sHMqURc44z0PFx0skRopIOXcbWsC3QUpLGi4ID/oN+DBULl4wF/wlBtvv5DmEKExuh2AiazZt6DYOyA5SJoFGGTkOADPER01am3aTu5v2XTiRUd1fZaf5WwiHfMhIBcnd1In1qFMufa49cJX4PDDcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729137355; c=relaxed/simple;
	bh=UxNm64359FkaCKRKI9rIUgVsvpl+a4O/8e1MEp7FxvY=;
	h=To:Subject:From:Message-Id:Date; b=P9g10S8yi3hJCQ/YBN0wCF79k+PXfxrt7hcJjBFxlFJ8x4OikXt1ou4TA0tye2UATWN4oOoWIp14rtfpgjqQzZD/QFBBNOTrIzFb4TtK5rqV2ZlCCOv7OBfGuT8LKGEjUcyCvU4k7l643gDNPomMiVEhICGl5sgwI2G4VXAomXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iw6HcuOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iw6HcuOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB04DC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729137353;
	bh=UxNm64359FkaCKRKI9rIUgVsvpl+a4O/8e1MEp7FxvY=;
	h=To:Subject:From:Date:From;
	b=Iw6HcuOurvbEGrGLpjAO9t1KvuYKEZ/QPIyaBaC7GFlEUuYWK1Qxbxkz2Xe86mJhS
	 dtVFOhdUIDEsDgIjVZKEtcxd8payvnPOxoDKj0HKf2HmCIGUotyDAMdpPbnXmNryjY
	 V3NBwYWURY1AVsez9sdX8/qLL57WCukgotS9o+jcdJX2gVkuzyVOiwiwQzUBcHNMNQ
	 gRf6dnULjHuG1qOVaGcFq2rq6UPeDottv3xy9mmLb87oycjxciimLF8SktTAIkeGKz
	 /JQpzpJYX5CNSEiL4YdJCcNf8AomrARRZeR+K2fC4z7aItOCRWSPXIy9WkXNBw/4md
	 Cn7DNvyqUkq2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95741D2F7E5
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172913735359.12926.15302089993770098181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b04b32c341e6cd09d29e9de1c7fb3452bd0e09fca706eea08b766f46367736
Date: Thu, 17 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729137353
