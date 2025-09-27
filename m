Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9018F54
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758951594; cv=none; b=Zb3vZ2x7D7p/WLcDya5mSZ+oouKfzqM1VyPnIujyLPfbSx91+4G8KBtm4Skm2xi4kLl03BvKTxDMhR/adVdAjFMCeA3ekOsvSHrYM6BbQ0H6abSZshbQbI06zIHV2k/CSqSsnoeL6g7Bhk8/dV6/xTSkI7bvoU3YC7It9DfFTPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758951594; c=relaxed/simple;
	bh=yDWUWv6f3y0TZ7vJ3QYrHR+vd6FMsUXYsMthLSsG2nA=;
	h=To:Subject:From:Message-Id:Date; b=jzIVjftDqTgZIf+p9u431wZusw3h8TYL2whHm7xmjvMPXJm7KN4sAElLW9qcWteBQFnLw4pZVuSP+oiEfP1e6/9eLmA/gVh5zybX9qW2vVIWhDTdLNWbeaxOXF/rxbX5dBnws1wTcyUPpMN3FX1nhZWFn/riNya7t0SW9ThwL04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1EsDlxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1EsDlxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8325C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758951593;
	bh=yDWUWv6f3y0TZ7vJ3QYrHR+vd6FMsUXYsMthLSsG2nA=;
	h=To:Subject:From:Date:From;
	b=l1EsDlxmIlUNYpn81P2IMg0hLdgqelpznk1W7tLKJi9oDLzLq40Duly2ghiRHOv2N
	 sEZIS8T6lrK75UVrDj+QftgVT7R/xC59CLTkV4MVSnTgs5uj5q5p0tZ2EQNvm2q9Og
	 TAe9gX6jz/NYFQr6+dJBETl4Cs6rcvxk71fJj++TMTOL0IJuMNee5GonC66bURrr+t
	 0BsX8eKEe57X8yNj4jzSd89RyFP7aYPGjgkzDGzWG/vjKvgjM0DzHECxjzMcqWXTnl
	 WyPmHpOR/UIcEa5wCnYW0KCE3OsyJOXTf7hd62CPNzY1eWucr8O5oqS3VLoYi0pAdB
	 G62fkhlCNDN6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B62CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175895159358.5451.17661071786319735776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79eb4388132ae8361331687f945c665c09023705bd94c256c0ec84ebd3d49af3
Date: Sat, 27 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758951593
