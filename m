Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57DB615E96
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744769394; cv=none; b=i8Vvu9gxb1UVZCOnyqIrYnaSm06Z0fM9WzWZydbSsHQJ/ssk6ppztB5kuEXSbv0ZINPpQxmEdA/5epE2FYp/YCzyaOCnPFJbKnZMAuIgyA+aU4pLcNFckA1z64DlkcFcM5B8YVCj1Ug0N0vEPQ2Q8NCN6N+iFCgj6oGSMeNQwkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744769394; c=relaxed/simple;
	bh=TFGUx7TaUPJBC0v9+wR5n/asg3BwTo9eOL5talrhA00=;
	h=To:Subject:From:Message-Id:Date; b=QNyrGR93hC2dI9ej6P0TUFOKXmDj9c+9NQQYFXvAF1CNyqB4cJwUWGL6P3/M3yTI0TNzRS1oamIy5fVVh9f3DjAQHcMYFtF14tmI0yzzyxV21xSWg8AVsn3jZVZFxxpRpHn+ng8uAALYmOZOiDXAANOLfVaz+BI5Ql4h/WtRM3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIIGpsyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIIGpsyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0B8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744769393;
	bh=TFGUx7TaUPJBC0v9+wR5n/asg3BwTo9eOL5talrhA00=;
	h=To:Subject:From:Date:From;
	b=hIIGpsyl7ZyeNIOXR4mrKJMcKbG0QfcvhXEMqzK3dEEIsaICk6XIOCRXDnEvsbj3M
	 g4wKKH6113L/2Qwc1x2p2BTAC9uCJ2V5hQNutfAz4CbAsNF4s8Md2YvWmU9U8hRSfu
	 IIG3QJ/SKEG6nqh2VGNKwBCiarUJWfTvPSYVkaVXiMib6cw97TsEavkRslHnDZ56qh
	 qgPmPsCMsLAjfJXLs6Xq9y9gRAVPyRQc59sngN7iOWKAyfKQWeR2+Ezh1Dn1vPdptr
	 TFNV7EMfXy/fqV41T6vk0j9Ivh3P2gzP2wfHNsSCUdNwjUMAQOsagIGmWGPSN6T2KJ
	 mqy3vS7MRNVeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F2CC369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174476939364.16830.16281287135185321770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa3aad58737279250abacbb7b580919dade02c61944abd2f75101402fff7a87c
Date: Wed, 16 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744769393
