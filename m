Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E54C18030
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQmyCKRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A5CCC433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701633496;
	bh=VXnUWFRvIExVREl5s7LaHE+q4wD7a0Lw0DziK1M8zNI=;
	h=To:Subject:From:Date:From;
	b=PQmyCKRNEZDFxU7kXH2IrvR079vQW4kyW9dL2/18Y2MdbpSr7eSSWgE5s+1Dse4wh
	 Y6943gvKY9gaWFuxq6nz598+fSesFlVNdm/twQvix5KABu0bze7Ynwyk5NAtZiC3mW
	 bzoqAXZcaenWqEaEbNOXdMRP2UDKItzRR8ZBDLAVqNX/wngMLir8/f6D434T0xjeij
	 y9VQbuRRUu8S/t1REpxvzIxAUwL1JrcofF3Gj4AogGx/o6n1BerOZCwS8NSaKH6mdn
	 ZvP+1n33Ii94sHkaSf6aRiETSz+nG/HOzgq3grM2htDNYMYhtu/H0czBJPK0QVptvx
	 IOVp12dJYEfGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0DFC4167B
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170163349637.23911.2186644710153388282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131a61c189b5df6841d124ded073ad83c8d493df296a788ad66d288bce6e2a77
Date: Sun, 03 Dec 2023 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701633496
