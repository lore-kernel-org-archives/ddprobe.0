Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B982F4A
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744514394; cv=none; b=Eficn5UPkHdlyyQzB2NMTfEYVs9u4L+CGHMxyzvclzfuUWo5af6gENM5Ri4o7PfaJofxHng6SIt2BHr8m+8896hv2YynwyP92OfHbgizlN7aCogXOgWbnf+C/svUx/Z6OdDW6QPzpqWp+YwajznRlprEaHWAV7FGMNFkeZfWnbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744514394; c=relaxed/simple;
	bh=WAywvbgAbrhclUY/ChdmIQnQ1mKDq3af/tuMAI0PVCI=;
	h=To:Subject:From:Message-Id:Date; b=GRLtE3j/Q+FI7kX7uaqeFhO9xxcvYPIlM2Ww0lOSC3FHMVpwTjgBAHXbF6EfNbaNbjfdjMrtXyb9EZbeGFIu2JcKJM8DzJ7GK+7S1ZPJhd7wav33MRss58vXhO8KgQEMHSqbaApAaqbhrGl8qzAFJ8JS9sYUn8cQlqcokp1i/z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbPcPD0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbPcPD0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBCFC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744514393;
	bh=WAywvbgAbrhclUY/ChdmIQnQ1mKDq3af/tuMAI0PVCI=;
	h=To:Subject:From:Date:From;
	b=DbPcPD0HkgnS9DNccGAeCxBUc9pz064NcIVk1vWB16GWITTGhwjdNENB3pxvOwkMS
	 hKIIozreZi5+mYtFBgEXm6Eaa9MKEZurHhx8P1/8u7DWPEqANLUCkR2UlXW7n+icAz
	 gNQGKgJRE9Qv+w3EZbRypGVjXBspKKyAf4wR2zdNTn7oPpiBgBxQDOECQlK0XIi9gU
	 ta/8VdVQDW8+vWH2EODQfAerwOo3VRiVIxVZDZ43Kvf7/hh5cCTG/oFNADPsDHYK7i
	 3bWP/qF40TBDJRXbOLcy0Ke1kFOqwGRU8Rmj2Lau7nsDWN/YH5eaOmhCf/atmRW46p
	 G9/A5ndHQYeIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5C4C369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174451439360.30794.6723720591032127713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf8e0150cadc1d98a7071ce893dda11a6fa1f9cb42088bc437ce96e021a35c1
Date: Sun, 13 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744514393
