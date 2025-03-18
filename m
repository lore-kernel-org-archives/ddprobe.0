Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88BD1FAA
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742257793; cv=none; b=WzDvJhK1OgARx30RmwoiUNGKikEZ3fFSZL5lArEb4wyDlfrqLitE7rtVO3COD4ycqCDew1D2KXw8oHVPWmI5JRgK9Gbc4S9m4pzcogavWPk2kAjUvXQO+uxomrHDbNgSZvQIkAHVQx9puCvcPAUgYTUmzggyxsdpGlcXn6mdgzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742257793; c=relaxed/simple;
	bh=eTAyLbi3W/J6D1m6W6xNoeO2esox058//EbjuWl2arA=;
	h=To:Subject:From:Message-Id:Date; b=WCG0pjE8SLeY54vAuEXbFkMOfuknYdS4saT9bCpwZKpoIx7cNQ4Wdk54IXrRC8snMWIWNTy11tAhx4KeTpUCZ14kGFNJI3lHn9Sw9SNJnFgBd1lo8+2oLtWt6vN3/0D0R5vNgpGkqqlkKNVCUVtBu9b3kGKCn5vXLWmr8dF5jrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIgh6ZQ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIgh6ZQ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6332C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742257793;
	bh=eTAyLbi3W/J6D1m6W6xNoeO2esox058//EbjuWl2arA=;
	h=To:Subject:From:Date:From;
	b=CIgh6ZQ4s1URTggA/1YWKCQMLaaddRKwngUTuFsppciDtB/K/d2nYIlz8I0uV//I7
	 TmmoCxY8GFsTC2zOw/i1+8WKNgFKK+fRbN/SbXySEvI0y99ra2PQJafGf0Y2hMV7ZY
	 CBpNp4B/So9ap+boukUDJsJSrdO75UzWRMaRgflH+6e9p5hLUSYJDrPG4w+5KVPgY8
	 EZZFSjk4mOYnB46fawL+gOCAR0piijWcG5P8hAj2F3CKJneGSIYNJr6iFCLOUdy3h0
	 h4FtxgtT/fFRZiNzPpU7loEGy2ZAJ9mSkJ6uJi/mOZ7bppPTDsiIi8t0TmnMgQZBk4
	 UrePYvbhSIgvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924E7C28B30
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174225779358.30678.3133924468289994437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 363a970abd0ec4be745d38440b900599aa2cd128e759a430fcb70c7929b0dc22
Date: Tue, 18 Mar 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742257793
