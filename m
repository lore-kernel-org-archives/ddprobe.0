Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179051096C
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcbBDNPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EE2DC433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703802496;
	bh=DB/3o9i8T0V01wmLwj3v11wV1P5MLIL5ws9fqOipBOo=;
	h=To:Subject:From:Date:From;
	b=jcbBDNPFAqEx7xaIqPeB6w0KAMPQV2rSmK3Fo+st+T0nE/sAhtOZNR908bcC3Cd1t
	 SUKxWVeqfD91lmlp9TBar0eTMGb7U2QsAEy9wqQIAUEgQqhSWKDIPWKIs8yKZ7yq2Z
	 fNmP6WfmDMFblPSo9H60467tN4sDvIunFb31X+8XUf0k26KixLb+qFE+A4JPHKCY16
	 I7xewXVYQvACN2A9d5qzEmVnC06qckvYzQeygnmv+cB5Gad640W6Y3kTHJkI0QKsPy
	 GVjgrYCEFHzvnZNeYXzeeEH4Xm/jwZfsDlVcY5h387vkd9XffZ3jj4usU4dBaI81rr
	 kl9HTW2R8nOoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66F14C3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170380249641.12588.16765109551292322486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6208874a66385396dbef6f8fb8c2ee687d192bb8401bbd3c237c2261b7c375ca
Date: Thu, 28 Dec 2023 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703802496
