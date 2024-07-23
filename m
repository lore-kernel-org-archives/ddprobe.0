Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593322E634
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721767554; cv=none; b=PRIgHulNL1AHcjKCErw8aIGMgLv5yqMOmhmrxVsfzKXXFg9i4MhSgJu98xq9UFZaFekmJXp3en+WxgFHTE0GWdEFKvMPUB9kLFXDArDo8tSDFkh7UpstJrdCfm3tUEuQdvaYcQ7z1ZcLYUiLHALQZoUqg3JWCSZ/9LU52A1a2EI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721767554; c=relaxed/simple;
	bh=tZNcOLl+s3I0FbAWecXmJoV6FVrGCW3EG1RpmAzHj1c=;
	h=To:Subject:From:Message-Id:Date; b=R9SAg2qfpz4XxMpnAhxJcO/G8+au7dlP9AlaGzlFRtUEPGE7isxpSyLyYdIrPG619EzJ+9BMq4Nj8KB1SXHm+ty6TzWOL9eWgi1TkOVUHgkcCtgsLAd4cFvFLEonBCI1cltkvXlBNrQmK4Jd3YL6+dh5aQj1gmbR8aFcIxTcHU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppReQLD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppReQLD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5E5C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721767553;
	bh=tZNcOLl+s3I0FbAWecXmJoV6FVrGCW3EG1RpmAzHj1c=;
	h=To:Subject:From:Date:From;
	b=ppReQLD+HXgAWZ9bbv4MGun9gQ/rw3ebU87GffM0E7YTGFENDOhcmeE89JIcwKJO4
	 lk2ovv45xnxZTIPJ8WLsnhcFIWWfVzT2Ml+Z03E7Hv+Kzvb8uZWfZlrzYX6B/QRX1W
	 muZy5abAZWd8204nGMU5HRfDPtx5KUy79mucK2vABw/gp+elt1CeifQD79afHZXWtW
	 Ha9J3A+sk/GRkeTsjv+71b0yxorRWCjTjD5ewP6J4n4RVtbIir6vVTZIgWQv+oPhKd
	 xuli99U3Hbt0DoCvU2R7mi+06340MfOhjNhfrDrrVHEE0MMe9fk31d49751BPouXW9
	 bJd6IWFQk5Gjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E84C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172176755365.21117.17171684072395913210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c7a45d18829fbac3deec7030e2a21819e1d02b1bdb189fe82a29c8f86d6d86
Date: Tue, 23 Jul 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721767553
