Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3991939A805
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781337994; cv=none; b=lxwc5JWnNvH0WNbiP+/P4jAxnn44Fvo7kSGoFsNoiB+w7E9qxggyvICPLkSTe6P8ZszzOzF6pxx24URCS2BmRkwPt/Jt5HKmRJJ8Uj0wF8NN327qEIPU4h6uj9oAJHFM3cZQirYink3cyMaxMMVt13ssEeEj/Ug3E6d1hB6/+jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781337994; c=relaxed/simple;
	bh=E9b/D5PO0hm2uozdjWxTb6gR9wRFQ6sI1QzF/nqglcA=;
	h=To:Subject:From:Message-Id:Date; b=h2dhTuqhbikuhY8rNPz/vew+FM+g7sh9wnrhrlVkqiqAEZJd9vcF7k66gH7fdpmPPge4zQTBZbFsnjA8tq23RtnG1WGVkUUFxQeWz8DYSds//1p7mOJq1nbm9uGKgJiakj2sgLZq8OVPBiQMG774Bl7RC9DJDck4+ZVpwxzfgKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+4zqcfn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+4zqcfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2035C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781337993;
	bh=E9b/D5PO0hm2uozdjWxTb6gR9wRFQ6sI1QzF/nqglcA=;
	h=To:Subject:From:Date:From;
	b=N+4zqcfnJuwlTlXSaa0m4kVd4uYXgpewItVDTjXAxo0CDM/7lZbGg8EtHYBcEmRd8
	 MSgmg8zxL+2Yo+0b71eHBNQIf7xyybC8DFGhCeAOXC2MPijJZ6zXrY0L6Blm4N+eI0
	 38Q/idXfVsozYCNCTdVPNMR4fI3PCM4rpAf8DfpY0JdcQL++tSzsJWneG44cc4vQ0W
	 swjXTMfbl+N64DSp06FhUKa0qMv/8kvVLYk9GZ8hJoeuJNBDCf0S9iCW/+RJxMei1L
	 F8F6lsMUij7ycYPV7TzCEaRb5Kn7hsuCXmCrpgBZWjNGNNHbM+TabmK4gFMjWs/RKU
	 wtp6cTszAmTPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EAACD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 08:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178133799368.8845.10870967880562628251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf9f08a6e341ee3374db3b51abda6df0e75606d1e6bca5911e812bb79f66b08
Date: Sat, 13 Jun 2026 08:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781337993
