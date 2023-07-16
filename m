Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575511854
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 10:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AFBC433C7
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 10:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689503468;
	bh=ebgiodWgyUI0LUc4btlW/OO9oAKOP+3n7FNfgPfPp/A=;
	h=To:Subject:From:Date:From;
	b=EGJcxReyex6OuszX6TscegqtYlHfgRMZCy0DXp3w+1mGlTrDPTScwymfE2sAOEuiR
	 r7w3nbb+T91f5ToG50b1LZ3pZ7TEuo557YCYfoRmMy0KTtcu7Haaf7fFtYkdR43+AU
	 tUp5vxdKE7qcqxjOOLZvq79FKDCRDDVzJqXKOvDCKSKP7HObEGleRAlBI916p/qru+
	 N5zN/3tebfD30zOgzzgFmv2VJZTWsT6yegKAyBxlNEBrS8jP1+tePV1+zjpjkVVSTF
	 imulbN4zO4wCvimrEZ2/0MqekNJtTXUbXbZp4WK5t2oB0EBOwzbQdgGLNH/xkRbxPS
	 pLW2+IiRFi4zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5741EB64DA
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 10:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168950346871.27589.448369686567869993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0438a00543563fb4707b753beb533c72db4819e291c1db0aa2a0c63a4464c1f6
Date: Sun, 16 Jul 2023 10:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689503468
