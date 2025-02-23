Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3A3BA2E
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 01:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740274734; cv=none; b=XFwKWtut4wo5ZVYscxJbzrHAdXjm/735znxp5rwZTAY7DYxZBJ41sS6f35+4AuLozWw9aW33sLRnqyd9eBJwGLIkXITpuwd7rUd8cILP98lDvkGR38dhLRDHlQzUel/FFXtjCxQUa/iYsHzZkUiuuXgyjNipVYygdmapo9q1nGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740274734; c=relaxed/simple;
	bh=uozGLy1uMXADU5Ny1fZnYeyB/9VoKIfsLtc6GPfjVAY=;
	h=To:Subject:From:Message-Id:Date; b=o0Y2dy1uziur1VrRBnx7+y84fe6yAy1rT1lxMvWGBp4wL3grJ7ELB2sngaYG44nYXFvwcVa2bjZ4aKAWeKlC0/vOS0jtLx1h94DYMIdfD9fywoF+9J1lpBo+2K6Ywx14E3252n3JB9JwL/5AAmr9Ql3hSQ+6bH1ijgKCsBlcPf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rn/eJgbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rn/eJgbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2D2C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 01:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740274733;
	bh=uozGLy1uMXADU5Ny1fZnYeyB/9VoKIfsLtc6GPfjVAY=;
	h=To:Subject:From:Date:From;
	b=Rn/eJgbiRK5FW7i6s/sLbYU5WryVBld+gGn21piVEEHgaA1ohNvU95v+jUTUhdASU
	 ocZAKvHxze1X/0aVzxFR8Ava7kYoXr0y2/KeE+Dp+sLRVhOHuaNz4Vr9fKl/gvuqyp
	 60jI6FXJ3fJbbBJKauuNxJQytuVf/kLp7YV+MggQtymZ7V/JiTS2SnPasXbh79Xouv
	 3H3pUt8YLMvctsRk/3HJ1nqJ2tfhWET36JiHBD2T1o2g7HXSHykxv8q+USnV8+NQ92
	 //Fel2pmB8aIPfiAc6AbvhD48dQVqhgVfnSbnGoMp1q8m1WMcsWosUHi/d1lEdFkMX
	 lRZPVg7FdH7/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92994C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 01:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174027473357.31732.10041138205585022708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de399bd07530990c8d6c61c8cda7945d95e5ab45b17380c47481621346ca8949
Date: Sun, 23 Feb 2025 01:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740274733
