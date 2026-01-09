Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187522F7475
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767945834; cv=none; b=fm0cTK02YKgtlaNC87Wkrc7ry8Oz/4l1o/6VF1mdYUNroTMJV8Lnk+ZMhBGz9ERemJ25DaB7eP45C1PYVeT1DtUmbHP7T6TvaVrvAnhYBX0fKt7Cxwr41oBWx5RiIwAeN8jdbWxV0KfSCZwSM6sF4Oq6mKYM8yUun27Jzqfg9tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767945834; c=relaxed/simple;
	bh=9f+393W+kIQODJTGgRfE2k1+4/5QXhp1yRT4tAxT0oY=;
	h=To:Subject:From:Message-Id:Date; b=aDhGN7QVDoAiimm7bbzmWBWPyzPC6b0KaJOE+nx2/XiNHlNc0ERPJftry0bYJ65uCBGf4LTb3N/91wxkJNOuiMIbgrGfS0gBEfshU8+zjXOMrXlY1c9BEXpRGDe4YsAi/+haL9mhz6uD50anYX3uU9D5SNQ+I/Ab1lLgV2Sj+cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCexDAz0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCexDAz0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0022C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767945833;
	bh=9f+393W+kIQODJTGgRfE2k1+4/5QXhp1yRT4tAxT0oY=;
	h=To:Subject:From:Date:From;
	b=MCexDAz0oi+RqrNHoBigFMfingxyZgrEW0wrm4qN56CUqmoIzYcwrqpZrdrM9Vc0G
	 +PGrTn3Lv2SEsbocOLRhtNrQ9DBkTzr03lABYsRDfxVJd1E2TbdJ78Cjt1IzUlUZlt
	 8EaRkmII4+Xy2MmXSSDZgPD9cNn7WfmDeEin6jjr6D5vNRVt007xaBTKf0+xUEI3ZW
	 a8Miph8zL39fCnToEYmLFqkWTRD/zr66wXOE/BvHm/gK4bV1ynOxhHWlgz//ydysHp
	 IR626zUFZk5roNGcfZCW/6ocmWo55F4sj9idFQrX49v4G/GdokYMgIPVSwsV9u4WKD
	 yJDlu67q3TyNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F565D232E8
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176794583357.4121.6259828336317597811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d890cba08c207dbd6ea9c9e3353808eb13cd8f850afb975fd4087ab286a9e625
Date: Fri, 09 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767945833
