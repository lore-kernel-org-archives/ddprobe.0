Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520BE2F9D85
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791478834; cv=none; b=QNtDzYCGu3xjsJX6yxkgNqWRhcDTLRF2sU0wCjNsBSuk3u17CTPsO3LLQpNZnNY8BlMek41hA14RuUj83tuO5StAMG1AYK+HOZmWQyrqJsH30iLwDnktmJzVYXg5cKft4ngLVSnsC0xU1SUhETmOZf+JK6QY/3JzJlDvAXFe+Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791478834; c=relaxed/simple;
	bh=sYg1pAv9bPfyKtf2J4sA5kz5c3Os0BMKsk3Oca4hDPk=;
	h=To:Subject:From:Message-Id:Date; b=FbWebDFWw5PGDOb6qGnalIpmJaw2mD1F2Bb3332q6jW+FMrrK5UOigp4P0QIVKxcwpSmZLl0DaeKNCAmAvTw+z3lHI8baVt6f0+7rYMn8akgv4yIMqR54uVhAZMG+1XTTSj4uS4S50Sfku1xnDsv7cqx7vdJNEQIl1K8VlBSJBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nV+59uHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nV+59uHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D887BC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791478833;
	bh=sYg1pAv9bPfyKtf2J4sA5kz5c3Os0BMKsk3Oca4hDPk=;
	h=To:Subject:From:Date:From;
	b=nV+59uHd9cpBD4OLT3pS43FIeiJRKHNPXvVgfzimpbxZ6uC7odj+86LxvSbescHom
	 twPfmRSRQQoVV6F1yRA07PvsGwHj8UQ6n7ptvRCTinWswBzyUSaMC2knto4tOvNTZT
	 ax1RjreJ/U1VgObfRVA6MvMQpH+yu4LPBaqKfvcbeELpz1jqDn2Gf4HEaktftVTXbO
	 pAxM3x4J8GncL675/1LLlC0U+f0z1WXv5EGFr1WBuvTJXEFDd14ZTj36/UmSNtPG/V
	 Zs9x6Hq5C0fyraY+hrOHDzS0g+Vld3HaQFgxOb2xXIquAXr2UTKMeSP9k1woKsaOk+
	 HeKBgLEamuSiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B173ACA6011
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179147883369.26659.12246356755897468330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e702a31af25395b8305077ea3c0dbccf55d89361273d8d1202a23e282fb04db
Date: Thu, 08 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791478833
