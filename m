Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208CC366074
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776321454; cv=none; b=oXnbNsjjjC1SF5czeeAtQPsi26x4OxBu+LYyU9F+OFyCW4UhoK0G0BG3QtpBvdF0raqrTwEOEVviOkyKPibHvIbUBGta5M5i9eidyXsD19YLX2R+GUtN0t/TjoOV4e3RcisoJWrj/GNVNAiynb7qz1CRHPSsuKxjuyXaJrPTcV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776321454; c=relaxed/simple;
	bh=ltM7Bia2jnmQHrmMVgYFsYl2hJxcZEPO9/CZIjQdAZw=;
	h=To:Subject:From:Message-Id:Date; b=Hfo++TwF6B9lZ4du5++9PtENCJEFL3jttqWGqqwJJdjeIrE7/ezTG3fJIK3QIxfU5JFXBGcHOZQYYZbcq6HUVfdbnOfVwkJZGIcJzCIoPE/4LQAWSXNWF3VfCguBnHLSVe/jvdjlVtLWiNL26xC/9pxRNr2z1cinwKjGBkl8LSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHvDm1IS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHvDm1IS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00E5C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776321453;
	bh=ltM7Bia2jnmQHrmMVgYFsYl2hJxcZEPO9/CZIjQdAZw=;
	h=To:Subject:From:Date:From;
	b=QHvDm1ISm3jNpseJoJuSKQh3XlW4TPd4uGtr5qF0BElOpMW8ML62w7NujldxDSKzV
	 NONGiOeYegVtHNNnUk7vuxHi8q1gS7c9JTp0MEwG5ub3WB0hTIvpF9+yyM+o5A5Ynq
	 Db5hB18CiLvcix1dhZvE15UNRyfAKF0oTwVMZ4CCJcsP3d6h4Acl/221zAcaZuZCT3
	 UusvB8RvNc/li/pfN7tI9kOAlCJ8ld6sGqQdKr5ti5BxKrhTTnwIIqS6oCKtklCBll
	 nFRrteiwmPUt7/x2NUMkIZouBWEC1/bgQoAPnU/ASj5Gh1hIiHceGO6277r1rFzJ/5
	 EZnq2dajrnQ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA02F43841
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177632145369.22418.11609756079359209314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a629d092724ead2a05a1725b25e89dfb061048c74e8e5bbdbf79c6c1bd4042a
Date: Thu, 16 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776321453
