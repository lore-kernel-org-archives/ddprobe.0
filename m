Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349463BD241
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786957834; cv=none; b=iq5NNJlPpO6NI6aXymONBR53rj+5LCpIdG/18CEG+i0wCfjl61+mFcTxeT3bLw6H9uOZWSsbIyeUdAhKJcj9H0hPy7u7GXY3QKuo7c7NAyIMtboOeRqNI9GCj+UYAzThdVJeEHQHbKKe6ytOk2XOkXLDVAHrVqMd3VrVWjuEKdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786957834; c=relaxed/simple;
	bh=q4J7GPukl5TNM2FFcgggHEubeNBg1axyluZL+mU3TTc=;
	h=To:Subject:From:Message-Id:Date; b=eyiGZwsA7G2bjcwNf0vIG73t9yrepBLhg7JMyBszWClJtsuQhLpnskeWOsng0ECkQGwO4ZeQDAGZFLpL8aqZtOR+Ueg9/qfiz7/I79MAirvcHyObS1350bPNOJz9HQVmKqS9iVsK/zwjGK2PgkpJv1H3i+k8/Xl2ZUvDSriZZYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGFtXbTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGFtXbTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0B0C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786957833;
	bh=q4J7GPukl5TNM2FFcgggHEubeNBg1axyluZL+mU3TTc=;
	h=To:Subject:From:Date:From;
	b=AGFtXbTiS1UP1ybATga+/I08bPdSQ2+W1zQ4iFCUG4KopaUcMEMcfYvL8MwBZhZB0
	 4F16Yw+vROSgVkbFJFYZY+z88/VWGyEyNWVvG5xPrFEpBaTxZKsJL20sq1rHfFKzgQ
	 J36QmARyDeffplzlCcRNVk2PFnqoHbPxAbcrWlcIXLtYDi5toLNcTYBdZiSCak4NXv
	 LgMa0JRrMFTRm5td87H8Pa/HX9LDDu0yZJxB5VPBv5Xiq76oeouFdB4OADfFy+VqRW
	 +b6yxJ2QnTg1hr5MU3/8Rev4mPxGaJTdC3+Kgjj6AjcUaVT3Jd8AdLMHLWFaFOxvUn
	 XEttfNmQ/79Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD29C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178695783369.2363.5030117318817156449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5166893412790a719b48dafca446424cd1e263cb44f187ce14967651466ab059
Date: Mon, 17 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786957833
