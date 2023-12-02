Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F77619CA
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ditBRNY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 826BDC433C9
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701499096;
	bh=+KidINsyeTk4BLSwBnSwUY6OAVNPjG9I5pTpPsfMaOI=;
	h=To:Subject:From:Date:From;
	b=ditBRNY2+nNxyUG9VwgjdUmpNpSc0GPAeklGKSxOmL4NDry+XHfQ8Akbbzngp5BYQ
	 Kh69NdEG7SBhpr6/tYEc32++BFh7TS4jtphboIyrtzuLNE+3MNbyibeS6p8ICR6VxA
	 Q5axtysWVJMtbB8M0hRzYeyzS1dNqRDRbmKepxIsMqa2mpR2s8Y5sZbLQdZ3d8bAl5
	 6D1G/pL66v26dPV2WZLWeN/AIvqQamRTqAcdEfGFdlQhFHfcgoTZvRUqk2VjLdEJv2
	 HW2TaW6q4DkbErVolFSuSmJnpPVX4VXBesGZ0SBo8hDGDox6/FLAcww5D5Vz11O38d
	 +O4EP5DeVL8Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 667FFC4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170149909641.22992.1381801547355536461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c29b72fd106f1b5dc66b3cb414a1a81c29c76d8d6b01d86edce16f83b0ac95
Date: Sat, 02 Dec 2023 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701499096
