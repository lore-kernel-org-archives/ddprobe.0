Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE563CB2D1
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773116694; cv=none; b=hCEdWVWJfdJLjcgRdk4OCuyAvKSX7eHy8puiAO8jwCnHMUMjlqGUjwJi5H4ubqgqPnegCXDMb6k1BemQ2wrGPm9jHT5yu0oTRCKSdTHLtSbqNhe8hiaBa1mTs7mYENJXcW71VWH9RybgM/wbwyVxl7CeU2QG7Xr88MQU9ypsZOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773116694; c=relaxed/simple;
	bh=RFCdFbP0hL0wJKqcOGtU/o5u7WXi4l7Tz700oqkbtQM=;
	h=To:Subject:From:Message-Id:Date; b=HbtAFYlpqcaz+Zh0xoRGU/pXFoasAK2GoHbSs6za7VNITexCsf5CRRLV6iS2t1h+g1wAuifGnTH9bZBEclyo/3veLcTByjQui89ZnPDbn/TWoI4NW5wgJKIsi64G7pCPlYy7xmjTkgyDt8iHrsuLjeylVi16gfsCrv9nA26TmR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BV+KdY7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BV+KdY7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25D7C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773116693;
	bh=RFCdFbP0hL0wJKqcOGtU/o5u7WXi4l7Tz700oqkbtQM=;
	h=To:Subject:From:Date:From;
	b=BV+KdY7WHBdY30CSKEITYcdi0VCHuG7UDgvTOFSZ4l/p3HnPBURHEb4ix13Hnb1rg
	 lTh004WGBPJot1RM/4ZP0SEUNYCzOh4RTjQBaFaJkr17/p89srupB/Vei4A23lR3Cy
	 lLWWwGB+B5SpUMcoftHDqiBaX6XUXC+Fj3N19ZGDOoawIgtqEWCubUISdntKeqS9om
	 +RucSj1392zK2q3/qMwqSOnQuJoyyqr40H4mX+cKWqVGFdGL9Sr6Z0m98TZdIgLbHI
	 SnsWUUeC9jkTdRbXqM9mgzIL9v62KPDDwfbFRjhwY9XxfYRUjO73dEp7A5eeB2XYEl
	 s7KKNN4QaVumw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B0EFCC9AF
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177311669364.19049.3173228374162401744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e8c8abc3729e7f08ee38221c41013a1ca468a49fc7b293450e58ee389b50632
Date: Tue, 10 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773116693
