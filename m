Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0FFB14E2F2
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772843094; cv=none; b=MAhSq5MqpYqeGw+zBbNS4RJWcFtwhKkZaIJPP//kwMTevfRnePDMncnxBqgeCLJA4uvZHUk7CVmL9nBHEFaL0/Pz+6TYcChqE9o0woLm782v8EEUr7BZRZgF0JrCseAgH0syodFCIYB6IMRHn0iNMiM7RM7T2I5r61o5756jCEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772843094; c=relaxed/simple;
	bh=FtfUKF7wkVf65gVqQIV8dXyo+o/80XqUzH0W0F7sElw=;
	h=To:Subject:From:Message-Id:Date; b=B1n1tug5YyBLkiw7JaP4Re96DG13dw8MqK+WOIB14ToPcYBssc57x8VhSzBYyHKtg229jo1gj+xXUqLmEl+1w47D30OfBqeWfgfB7FHBDnchRKNV5imFzankl5gkD50HgCTTJmSfq9VHGEPdeSiB6nT7it62ddw/jkJmaeipvlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBw/EUHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBw/EUHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B8AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772843093;
	bh=FtfUKF7wkVf65gVqQIV8dXyo+o/80XqUzH0W0F7sElw=;
	h=To:Subject:From:Date:From;
	b=dBw/EUHp4dKu6rSsgpVX6/oqVbQ38Kdfwee4Tq4f/YSkuFxWo0NdJgTruCEbGWsAw
	 ZcMPvPmLWXfKraic3rlRZxmLWtuF+8wuhYNJBAP4/ohTGLZM/4HPIG+mhIEvVaxjct
	 ewG/hGgqaqr6VxeaC1dpgsrDzzWUCiaqehk0WALNZOVtzR+oojxXmDXmY/sDZuwf/q
	 Yybm3UledrCEWa/Ew7DFMEDIUo+unSUu8AekTeFxknvvhcWHV1epRNjAPjbn3lvj+O
	 2y9PH8oN0eY8RSYklDaUwT/Xll51HCFhxogXpNMZnoMt5eiiVckHjUAiTaCPmaRzY2
	 WQ+DoeWLirqEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DFCFC9EC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177284309357.25011.14392002718949248625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e43b8bb69079149c305ec9f1a93d21c60ba5c228fb0477bc8ce476a752401a
Date: Sat, 07 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772843093
