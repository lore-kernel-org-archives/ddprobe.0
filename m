Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515791EFF9C
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742453394; cv=none; b=N6d+TdZFdVFrwK8NchV0GkmgUQrjA/gbkRd9YWkFOY8jrRNaV/36Kmnc6fkikyncsPLKO4KmkqLwXnHiRJvWruodMY22egXLsX4oJDXCjdzCi/x9t37IteRU0KudCZfrKNPHm4Av0kmLYpqGScZLCfiSS31nXBjcIZXbDKELTso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742453394; c=relaxed/simple;
	bh=p/20r4tBmoaglJuK8itOSl8ZmFpwMHiPPUPJMR3hlsQ=;
	h=To:Subject:From:Message-Id:Date; b=FPTxzQrv8h1bpD6VBiHjWrF67U9jRkXsoUQKdoo8at8jVecM0sXWUTCrTPIo8tQ95qbv68Qt2r/dvbf/OUd6hO1Bl5tcDw7IJn9f0evrPjIRmZBynZtBIuwqtmTjpW+wI3N2ZQugXT5IxY/8h7EZPyY14deDMiDefr8SG+O4ivM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5LJUhE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5LJUhE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0864C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742453393;
	bh=p/20r4tBmoaglJuK8itOSl8ZmFpwMHiPPUPJMR3hlsQ=;
	h=To:Subject:From:Date:From;
	b=M5LJUhE/R2YIUSG2Ps+lmZ6YmhgZRzq5Qd/VbdLgbSqlmgUQZi2FMkpLpdKc3oCuP
	 ILcG1p9CqyWwQjgLWlthFwIvYZm86TqI49bQQMvjEftbWhY8Pky7k8+yamJF4KK7CM
	 o8o2tyNrg5Uf42gxSrz9TtCFXpDmJVXIXeJIK76qZtYPiufxWnDUYhYglzxDFo989W
	 hzrJ+MiMNW3XLWN35LyDmk+LMlwMENd0dlv7nagKeCHM5+HUuXaREyVj4rI9WUAefD
	 HtzwuR3QU0qoGw9g89SbHNe3IcS2IuHvjZ+Gd4YD/oeLVGBd8J5G14EHx4agJNfPM9
	 CokvD3QUvalQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4E3C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174245339365.5244.2854963443567810714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3999de057c1ea1476bc9099139105142de4ea34ae4f376470ece4ff48259adc1
Date: Thu, 20 Mar 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742453393
