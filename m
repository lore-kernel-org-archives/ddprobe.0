Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422F91990B
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 22:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB22C4339C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 22:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683669665;
	bh=qgO7VhWTT7flIYIMQM/JhYk1HGQtLH1Pf8WfL/W4TQI=;
	h=To:Subject:From:Date:From;
	b=qdGmcknw9/y9B5j2kTOUW6o6vXuAhZe7XevpMYZiqiI8T4tnZ+aSO0lHHaf1LF744
	 kcPYbmr8QlquUO2UvNuNZU7Vg434ZalrvKJ5PfXLvSXcwOlsT6oGlHH1PHakdeLsM3
	 UhVVUXw/IvEeluNarkmvbiuh7VlNF5eBEOfBRAdIR9t6C1j+7VQd6zkg+9ri+IrbGe
	 2SmKWgZWOvA5PyDZmwR4YR/4ASkpovpKWKih+baFX9tfujAMk9cKM+EeJlZVXWZpCs
	 6K73m4ptEH/UVXUYfmDB3X/IBPAQtq+wMLlxdo4RiVHJjzDDpjjsUcM+D7wG78t3nv
	 eFHDIq25K3Y3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1429C77B7C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 22:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168366966575.13662.9246415722944599168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c874cceba82958dc1f388bc1a52d65b970855787d65e1d00f467709e327368
Date: Tue, 09 May 2023 22:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683669665
