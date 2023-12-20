Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB54B1DA4E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJOe2F4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76CC7C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703105296;
	bh=5py3FKwS7CRAlds9Pxfjw/rvhUPGBAlejuWZ/x2bgFQ=;
	h=To:Subject:From:Date:From;
	b=XJOe2F4litfk5Zx/cUSQbSXYIsIcGt9YAgVqfXBFv1B+YWOr7/iDzhHRy1pFOQ4YX
	 a784kwu3lX68cK7NgMpBddBekhqmfd99bUpDuhFr7AMjeXXnv8cWboWFEdAZXCge/T
	 FOiEdDNx9o9/3lJl4xIbFsGkJydXoL23XgbBlFEW9vNWggnfdShk40YdsyAfMiosFG
	 tjuMEULABP/T3lWfUcFrlrzqYhulDjodPMafW6NIZ50p9O6iJXaXR77R365Yhb09VV
	 dJcP2++UtTP1awpUdgua3bkh3GjUzvijWEWaWELDKIx1iMXAwvhIXBZMyI2Ir6e6L3
	 LrLJ4sSfTteqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D1B1C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170310529637.5120.8684319408776019404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8469aecc3064c1928dc49bb49e8bb80b90074e0128ae220d8e1d41fda2997d9
Date: Wed, 20 Dec 2023 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703105296
