Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F11B2264A9
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776898654; cv=none; b=ie/LSQ56hY9ajgH6DuKMgi0d8+NsC8TP+GLIlT8RvDU+mGAnLoh85yQAP3b8c2NZQv0mDx2agqCxOR8ju/23ps0zEivadplqVNuyy2b6tK+y7p4ILlsDOp4bF+BFaLrV8m0/SgsdRh1jeZSZSu60cjD0DgbJmIfACve76R++DG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776898654; c=relaxed/simple;
	bh=TXZvMzkvTLaRmFE9eVh3tN3RWx3+04ADyvRw1VFgwxE=;
	h=To:Subject:From:Message-Id:Date; b=BHZkCvtVIE6QCvSa4fhNmZNKsGHx7LppG1jLqEU2y5x/DCXJHB+M6LqkK7F9L8j1EYYouSIKbZOW8rav3RRvAgKY1Oh+Yc9A7toTAtT2XiDglQbIhqP+G8R3n/WhWEDlxodUZZyQ0yVEfT3MI2LAXEMCgVEY2TWlyUrNgb4MMp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bkn1NDRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bkn1NDRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB62C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776898653;
	bh=TXZvMzkvTLaRmFE9eVh3tN3RWx3+04ADyvRw1VFgwxE=;
	h=To:Subject:From:Date:From;
	b=Bkn1NDRbZKZhIz9VMKeiwgs+ZlVzsdwpn5kh6WRU23QJGD2NRWojNVhN6hZDkFuFl
	 ooGQeTFlT3iIBATiGShHQUUAk0vN0ov/lJDTaDk5GSH2Ro71hPq07o2jHyiN/K6RMy
	 UQok6+abywwK76TQCiD4ifSP4XwQcwOnBtSL9yNZC5+F4OcDJuekLPoGCJQzt39Jlq
	 d5hic0MTVx4MRBVlfBZNzhyQxw8vHzASqywU3u5c/bUm84zM5oBTFqmev0N6NBXEiT
	 47LTDTvNuXZ5eZS0p4ZOkPDsSfK+ZQx6iZNj4dL0DwZqIXwWdo/7vuihIEyGo5R9uM
	 XK6uDE7d1x2gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04BEF94CBE
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177689865368.11661.16324951610438673804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66493c63d87743b521033da1f7034854d3deed43a761a5210226c02a49ff1e4d
Date: Wed, 22 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776898653
