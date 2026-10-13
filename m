Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF8347D929
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791867634; cv=none; b=j/nZYRWq1YBZ+7PfuFPQ6kYkn6Cetd/bae2fMoUYMEPTjEACnTWGGQ20rjAFSyVMWjrmxIHvNE4K+2sYMD8hURlzNRy802+XoIMg0M/TAPmq1gNo5UbA2sXcoST9nGxAhcVh/r6oAv6b0iPusA+KYMHFHJLS7O0EjTD2YVvJzeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791867634; c=relaxed/simple;
	bh=/VglQP8m8l5iuQXbPT+G+9VQq7d/ZzQ14AfvdKet2GI=;
	h=To:Subject:From:Message-Id:Date; b=ANNfvJ5DboydsjmUpzLNn7/3K/30sBzEzyL+Aw0ARyb7FlRI5QWiyAmM+yhsZdrjREeKcyo4KOhCaZPV0D/lPVbpnPgyw3UtWkWfrKHpXOVxRMSrgVFS/A9ZNgGbAq07ORks8mdXZlh4oxRS2n/Dl7gU+442cCOz/jmrEND6pd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGVrW1dM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGVrW1dM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29DAC2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791867633;
	bh=/VglQP8m8l5iuQXbPT+G+9VQq7d/ZzQ14AfvdKet2GI=;
	h=To:Subject:From:Date:From;
	b=nGVrW1dMCCY1qTTBX6VCvSorI6JhZS5/XHSSR/FPxMGnPvfZD1asWAoNRuoFuGHwo
	 N6z34wMyWVoiRtNeO8kZALjbvl9I9aSGwlX+nKejnL9z5UT91IWbz4ocu9X0pApO8Q
	 aNqVZOWz/ee8lxgXtZ+tIFw25Di42EkvKNTFeMya+gJDea3lfMz/R1vftqKV/BPXhP
	 etQyS2ZOSuiQ0XsDvWtr1nZLI/SZpOQU0Yg4kqrvfAG1fsCGykHvaGiTTAzzqjG67L
	 uObhgQeVquaP01wRUw1XkeVbvdoI3qLyRvVGvf22MGe7L+s8VFazrPRV3JalfGrEa2
	 1r+D3433kEiaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF409CC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179186763369.18071.4400917178199302708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 262d4585425da05760cafc0a7ce456aa6380236cffa2755e52b5a7729c18f085
Date: Tue, 13 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791867633
