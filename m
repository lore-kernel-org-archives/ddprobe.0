Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA8A5364038
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790943634; cv=none; b=hnALWfJRhL8hBg3iWJ+cyMV/F5R65twrriEM8PBypt2KRgEXZ1SxXT0o3ySAaugIeX22cgbMS7JkUJrlC/mr8rqj4YxvLpRSV4CztxHECEzh3bb3gurAzXSCiHhJtVo6KMcFEZRb+wyMGdyApza8dWRaiF9udUMUEYKDMlXabS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790943634; c=relaxed/simple;
	bh=US2JGgDwCwBoTQkkHyrMwFR6bZTcd0WiQe9FlTcbjXE=;
	h=To:Subject:From:Message-Id:Date; b=uAWRobwRBYJ6jhYjskFtBnPP30r0MizfnwxUPZwueoX4qVk1UXmfj1pyEDeSEifQ5mYQeIx0HQMzxdFm8bV+zzp8dTa2wyhbmFVDAqgvFPSLWtVCusq3x7BAjA174yW25z61bq9xd3x8/HhoL/ZgZBpXjtB3AblvbhQiJpR4utQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMvx0qHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMvx0qHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1440C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790943633;
	bh=US2JGgDwCwBoTQkkHyrMwFR6bZTcd0WiQe9FlTcbjXE=;
	h=To:Subject:From:Date:From;
	b=fMvx0qHhnTXSgeJH1NpOXqBMb76iEpP1iy3eMHdsagy8tnJ9gBT3fJNH8UFDosKs/
	 DCMSJQ0P13pW1wwbrAynXCWGgVly1JqzFucYgkbECWBcD6tRLqF/do9/s7/XG1tl84
	 GPILw6tPH/ODTcyKWim+0ewfIXA3kzRcFI1zk2zgmwPiH5rHEO3LerN9bcY/WrMpZJ
	 0Y/1IsPGfbHECL81nBJ/3YNL9xq5aA2lT6/gFR3A8UeM0XEuGDBQXRPYEKQr9fFWS0
	 7Q5nPGNujNGChO7i9/FgXw5RdzyxbvS4Fnod/PUT/9i4CbjRjaFB3u+Eoqc0mVKaBq
	 Jhe2EYNswckwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB84CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179094363369.7781.11983496397348333967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4002b64cb84f47267311fb74721588340be94ceb33ec78be0093d1393add8a20
Date: Fri, 02 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790943633
