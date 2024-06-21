Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6518E1C14
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 17:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718991743; cv=none; b=s52ZdJ3p6HPrvOoal6Za4XjYqwXk9yExyRo8LLUXteSNoYPugbu1wwaoX+YgDB7gvk4Cdv86i1CKeB89Ce4s0ZWgSy/NSmkxZWSpnCSm8YO3cgyKiHpeG26uK1Lw8WJx3UEw1bJXKKMx0FT2/wW1o97FO4cyu7tuZs8S9uzyotY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718991743; c=relaxed/simple;
	bh=nwb+WV3BThk4SLEwkBrWMS1v//unBYh5rm9aVX0r/hA=;
	h=To:Subject:From:Message-Id:Date; b=eu/IXy0gPJCfJz/D/y3+snmIg1H2P4NrYzi76BJc/iam2BPHz26iCZJhSO5X3Z3WyaVTATWadP40irTOAlCWnrYOP7dX2Kt9z47Q8EW9rWsyQq/iwE5qBrxG5P6z6RViLxzOKSLwS+ss4ZUkgBW/sfbefW/+a1FBx5rcsZWqCY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hf1MRcv/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hf1MRcv/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0B4C32781
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 17:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718991742;
	bh=nwb+WV3BThk4SLEwkBrWMS1v//unBYh5rm9aVX0r/hA=;
	h=To:Subject:From:Date:From;
	b=Hf1MRcv/3duS4MuPulyUfprsV0mxMGzD0AcOwU6VVk5fVVoIhGXWEjBO8gx1CoNF3
	 w7+W3qCsnB/LlK9x5MI+HmC2L9Jc2TrOC0dc4AgGCHt6Txjiuss3sNZ/725KgnIO5v
	 67AV1p0P8REmIq4ZAQLDgiqo9glCUtvXbBQqgkV0wHtV6Kb0LZm7ZbeNkt3Cd90+cr
	 /4RgWoyudBfK252L2YONR6qV8k4iPjGkKBhVAIyKsh/WS78bwFKmRNv7q2r6NxhFJN
	 e7JDAREdO6nDI+KMdk8mGQ8xtCvj3YRhJ3t9KiOYlx3m5eXA5aqiJMyKdyhY8VRUOU
	 ZJ2EItru5S7ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4FD2C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 17:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171899174279.30538.15532240824723316206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed7aaf2a7352ce00da5a702f41a2b9511c8788cddd03dd6b21de4e2db9459d7d
Date: Fri, 21 Jun 2024 17:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718991742
