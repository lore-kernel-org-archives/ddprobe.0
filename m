Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C95028F3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738202754; cv=none; b=bpOYHdOKMTZTHK83h9nhjMYWWOBqgBqV/Or+qkIjhsIyDQVvxGqLWEh24zU6aIWud8V+AJNYrMkTTdYeKQD7z6/1BzU9XRoMI5+N6SeNOFsyt5/OBERvXtuWzJSDWoPx9AraRFpaJikRziytOL1Xl8WJdjLuDovx/zdTOIkEJBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738202754; c=relaxed/simple;
	bh=bJ8Ff69XRt5+OM984Uz5L4ydD/hIEqBIeVhjFSfZ3fk=;
	h=To:Subject:From:Message-Id:Date; b=FDfymwW/L4c73v9/gi9eG80ZN0h90utynPcxUNRpb8dmXnqzDzf4oNOcRGMDNxH2gvK5D+W3Hno4cv/5XRoKSpPc5Fw0NlKbwgLanJapF8u6tQcY2zbzEfbfxfDu4/b5Vbhiv6BKJXknvnrvsZ+WOinXMRsboAaldoyor/fhTT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1EarnMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1EarnMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7246C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738202753;
	bh=bJ8Ff69XRt5+OM984Uz5L4ydD/hIEqBIeVhjFSfZ3fk=;
	h=To:Subject:From:Date:From;
	b=G1EarnMphPE/vXnpW3Jj8Fr6Jel2ABvJV2+7fw6wgRShwb/4+qsGiu733a1hmqRA0
	 Fy9qw9FMlT1Uq9RrqjPA4QMCe8FM0tTJBF59hvbKjoHum8IAKiEgCPaPz5hY79abe4
	 ttgLcKle0h1m/Ybi/g8l25yds/enFse6qHB5DUxqK3FgVazwiHJluR/8SCM/NrQKgF
	 GXTzGm/hBvGEsMBnAR4maW5ypXTGXFz85P9ESFWYwQtWTIbOHQp6XJOOmoUagzmcJX
	 kxRo5E2JFROt/BlEPQ+tV2kTwSBTt5d6ZPq9BHCKviIFqpzgsC4A7U55QaMhQkAFE3
	 3OFFXOsoyLcZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9D7C0218D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173820275367.16876.1309530495531809984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d893a37550fa6b8c637357977dc4d6b9898babe041e914bf7f021eb684f73d9
Date: Thu, 30 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738202753
