Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C3126E6E1
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764226974; cv=none; b=YdMKTqVH8Zq83ya0OvNlamKX5kxaOLIZ/9k+qYx5kgrXAtRqO9/g0Uhdu8dlc3G3VeqJHeSuLqjUOmWUeHK4IK2eCfWq6akCcNmXH0kJgAayU4zQ18lX94kjPhpt3D2CVcp1Dmh7k+S1pK9Sft6j8wGkQBFu/Hgaj/G5UGyg2uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764226974; c=relaxed/simple;
	bh=fWPcktgyHLBFwP4w7AVC8e/5sBW92S/4tcAh4NKhUdc=;
	h=To:Subject:From:Message-Id:Date; b=nZnZOu7mBjzr/DzZ0axnQE5fqjoCKdqLBsdCW/QoWdTZ355OgqYOUrk8VRoRC0kmVFHyuSrtUR5ke+PtPg2l1Qm0WMjdl2rc31cI/yIituw/Idxx/UtUPy07dJ1IHygEgjOZ5cH4V64zF4RQUGRhf8bBaCj5tqXAE2LIDxK44HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6iBpzfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6iBpzfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA53C113D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764226973;
	bh=fWPcktgyHLBFwP4w7AVC8e/5sBW92S/4tcAh4NKhUdc=;
	h=To:Subject:From:Date:From;
	b=s6iBpzfGGCXKUBhSB5CVdO9xDdeWFfpei1UiReyqA2PsHtWKycv640VI0hZMVVAuX
	 jght/4LzQyGTO2MUZPsXdSugP0FDNViC4LHSeCZxXsYmVrUW2fOQjYkVBsE0TQ8nwF
	 H7sewF07aqzQJ7CjPtF+CaVh/FSi2Xs/9l4eLBM0rlZAH7xLp5a+WIQS8Yv/+pE1Te
	 WdkyeYGEc6/zWw/XvSgeogYoZTR2vugtxZCSL7Jtr4h//i9YksZx9OnT/XBlF2cRlO
	 qrkDQjxl5P0NL6o7ezdkkFiSjVlxx6hhk1H7erUZgGkOfkK+qJ2gMyNIASud0E5gmo
	 NRe+7m2kn3jdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AACCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176422697358.858.3850635524555528205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c575b3b59e5f9db749b60f653f1c7d36732512188e890c10105415756e24559e
Date: Thu, 27 Nov 2025 07:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764226973
