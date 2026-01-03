Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172A5E573
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767408834; cv=none; b=g+r+IGCC/U9NjNuufCOMdQtct9NSAYbKDAqsuIzo+XZb5RX79XW2P/KCUrPBxs2UZj7gH5NrRJeenQld49K8wc9iMPbTs+IrAF/ftyYyuzYbVI8faa5773SmYnTsvXqCYemRCAFCj4Qj9vMeuBL3wTZhLl+m61R4fLdn69YaE7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767408834; c=relaxed/simple;
	bh=3DzvKLEpQHLHLhgwONpnKIRnx+zFuk7fyP/JKixZdo0=;
	h=To:Subject:From:Message-Id:Date; b=UNuZT7ib8y870Wf6UUBFBOqziH+Pk+Ib4FhtLggHmiIJK7aOXy917/b5HRLqa9fNxhjo+B70Ie7NgOvznM0/WKoGOZf1ngmnih5dDR15wY8UQ2K8OM51PlhebxjFyoscosX37NnqEO4T6etwSPIep0HYHmTudXpBmRe+/ZjnCuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDpgUf4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDpgUf4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EA1C116D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767408833;
	bh=3DzvKLEpQHLHLhgwONpnKIRnx+zFuk7fyP/JKixZdo0=;
	h=To:Subject:From:Date:From;
	b=IDpgUf4FG4aeUoWD8LYqcTH6HFlG/n8mzQh4wIcayi9ztXfrE+z0xnaoWF4uaHSZs
	 M7EGF4fo9D7q9x13QYGdD6ZW48GNE+GeqRi7s6BqIsaNvMJP/Dte/lcB2oLpDUbO/z
	 ksKBQT2ZX4jGZbgHD+QzkrKNz780kYfhXrUc6BWhADNoHKYUgUhg0ijV1ZIhBW49bS
	 7ZpyL4OkTZZGg8wtwWP0yvF6WLNXwdw4HjizzW+yxHgWe+0VGd30DHTCyEqxs+amf8
	 0YLoT9I0HSfxqLdAH6X/8pD2+rIEYlLmVsknp6E5YTnVJpwwCQpPo1majdbMk4+wjP
	 PzO4ydoeoAxxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D89FC6165
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176740883357.21852.12009252301605641132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08e7f7c27d682d5401c0cef9c256c0e77c585d20599118904e8c56972b57c47a
Date: Sat, 03 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767408833
