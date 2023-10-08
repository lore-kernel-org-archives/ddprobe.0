Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EFA214A93
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 21:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shvoiujh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C60C433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 21:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696800428;
	bh=5DDVffAUJgz5nz9AHb6iB3c9oHQDDzAfBGlo7wvDdkU=;
	h=To:Subject:From:Date:From;
	b=shvoiujhIftMy8R2+nuSVU0u4wHsIpRD1Oan2U7yWEsDjnSeFGb7RBAAfD/vRnTOT
	 RSEErTCtY0BJ2IvA3xzRjLWWkDxr8cKma3SmCnWSmMpCy+Fzzlm2wx/J6h7lracTDg
	 2q46ERpLW+PsttO9uiUN3GvEzhbMy/hFLxbfQA+AmJepiLHQ8qZNUOPOjEabHj8XDI
	 AJPcVoIWzXSenZFju5e+ctIAxd/Wcj5GZdlqOIH9VXjXzUi9b/HTK9vwJqyqzzVI1z
	 8rNipbppBevzvX2L/iAKSDPc/MPepLv+dL47mGjUzKUWfeB4LOTSm76jarchC1sxUH
	 oJ010ItMB9jcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC83DE95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 21:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169680042869.32451.3874671801357756360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eca55a3d0eec57fe9581291834304f0d10cd7b56d7a8a50d80986e28792a727
Date: Sun, 08 Oct 2023 21:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696800428
