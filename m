Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73413B42EE
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786960834; cv=none; b=Uat0WNleD9IGa9nz59RJm7ObZvUEV1ybhBTKEob7+SgbXq3axqk0zIeM81nr88Yc+EnJlCkYIN58lyl2iPk5O4M8PfbCMs7XvFPdgfb+OzJ+499PDIKeYOPAavRh2612qqvfEmaL2KTEyZQWU+KHY9dNC+tJEfS07InqJCZiYgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786960834; c=relaxed/simple;
	bh=tNi2oE5UyqFA4sVPOIm/B+Ev1cXZqIgYbJ3On9qrKdI=;
	h=To:Subject:From:Message-Id:Date; b=YJVDjYBBe7BR9kFmzxP4RJrTay3PqC/1HKfBX+5qtfX2iKDRcPK46MLYaMQvle/QqFnGF/P0nrDeBMB8GJtkGbZcYtKGpgrQYu0RbyX1NRUKFwWHghqVTpd8j2wVPSObqpg5vU0nzlhnS65f8uAUrKloq4omk5A7UnestVmRdvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCv/P5LG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCv/P5LG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD573C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786960833;
	bh=tNi2oE5UyqFA4sVPOIm/B+Ev1cXZqIgYbJ3On9qrKdI=;
	h=To:Subject:From:Date:From;
	b=NCv/P5LGFLEQCX6Yk14DmPT11hVLA4zh9eD1RE703LyP4N+CS+FXXk5GCTuBMQvw1
	 DowYAMqrynJOIKWvW9K4qD3lJiJcOeEU6WdGg3Pspk85yZ2SVwSD6EokSP7/O/2NmE
	 ixvw7Yu2eCqppeoj1jbI0/tMOmhOYlzm3s4HI7lfTZ2wFGuuO1/L0UmOgy2Thq/i84
	 /eews9qT0RzkukUt4AMRpDKrRLVMT+qzLlSS8dpIyXMkXqNecnH4Q5Agy3Stnuj016
	 BDSujM9+II7+ZSfNLaQhjBTdxkZyQI9upNYnj6NoKvTPUr07hpohL1KIGfkZhPA8Ct
	 b7JJSlqEKzkkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5652C5DF70
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178696083373.27068.4566994761063627409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8964171b624b7c53d306735eb1a4f2e7f4fe2b73067e599bb2f393454ee23d4a
Date: Mon, 17 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786960833
