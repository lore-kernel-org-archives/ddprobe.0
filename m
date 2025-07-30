Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C94818B0F
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753849194; cv=none; b=X0S2UqQ/WwE08ZM5QJ1Z6ggDlNi7Pj5K38Cuxuz32ZrJg3cqwObo7aO9Cn0GbGAyYQdEhwEgwBJTeWUipBB98nzDV5DperijkybI/Mx1d9CMsshJR21Delte/SrAHirXbV6OcLleqoU2QEhx9REol6Lcc9Pcb6DwjaGbqjuJKjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753849194; c=relaxed/simple;
	bh=UOuoIKel+S7D8iZsU4WWV6SxpW6EwPS6xhxn7zJmauI=;
	h=To:Subject:From:Message-Id:Date; b=DDX1Ss3UL579MMh6we/t7LXth2oBc9AHpRZIsB5+hw+YY41gpLDds7jRp4tpJ7IwDm+hPpZ7pyxsd276xD/qvu/t+b1LV+G5wLOoDJBCDEYl1oae+3v4dI6n00OFgSHKiXwenuzAPLjbEjpSMQpC67D4ZYi9XNiv9TYOgy7G4uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESLPKr4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESLPKr4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A61C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753849193;
	bh=UOuoIKel+S7D8iZsU4WWV6SxpW6EwPS6xhxn7zJmauI=;
	h=To:Subject:From:Date:From;
	b=ESLPKr4O4r5UYLwONSocHM9iCrsZOgUXWb85qGlQ49Fjy+d2IG55V3OIFhok42LcJ
	 4wTc1IEBuhNJwbD1WEyOsz955Bkx+MifeDUcZIj2g9KtTrJ10E0HWTLwL4gZsotcgf
	 ynEo9Gn2ufciYe8F+gA/SberFn64EiL92ZH9WcTDfVtpDiEcPMcqwdqVIiTiwOka9W
	 gjTs5EbU8rmaNAeU3Sgf6bqhzsxHPlU7PfvN/zhB6Cg3SAcqiTF3RFdNK0jKUYBTL2
	 XHJfVKSYH/JR/IYfH8MOfS5Xakt8cF3mMG3BOZeek6Dxz1T86U/lkOWr68o9G7uMAW
	 TCRxVpih6PnTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93151C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175384919359.3795.8233407095627175864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4cb72e6524e0dcf19449119448498f5158f51cb8123704e20589e1be5cdbc48
Date: Wed, 30 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753849193
