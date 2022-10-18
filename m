Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14907F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76053C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666073453;
	bh=XHjCTx5g9yAc8wAbXTgIKPUCo24NUHz7PQaElKdgrmg=;
	h=To:Subject:From:Date:From;
	b=HcMRF06xle8FokNrX+h+X26rSIpyPYVF+mqSepE+h0NrVrmxknzBmVswpUasJkvsN
	 mn1qgb4baNPeSuBzz5qk2sDqD2CW1kUzTjUgPS6DOUbKHkaj9ZmrMvj3v/CaVZMpc+
	 CHgRSuYpyqXc+DPdn8GTCQCfMCk/DZmYu4C4j0ozYdmmMEC7x5QviODn0pjtQn03gY
	 wFjkwzuEAeYnzoFz+giAaK31IRPW8VyDoDJxybpDMNrFSETMyEvr5HUq3gWmi/52yv
	 uO5EygM/I77wkVRkk4qd5xqbLuRlNvRDWcEMDloZG7mggdu6V3gvIdpMkHKk0NffNd
	 lpA+HKPW9fA5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5567AC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166607345334.10313.5158158389990048929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a95a811b298d2f6060f6d86f702a97967d9a914e3d7c78fa04d5d114f374e30
Date: Tue, 18 Oct 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666073453
