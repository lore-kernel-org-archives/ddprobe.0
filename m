Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56A115AD
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 709C7C43470
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664674853;
	bh=mARCBAX0g5nykhcUr5NC8RTnv3SuzdsUbknKop22k/k=;
	h=To:Subject:From:Date:From;
	b=fDQb683PTKtbY4ephErLjKCItmRfDFt8aEsR0l42FEsTRqbVoEmDbQ0P/RAmPSOy7
	 W0J+bfh7j3FDcGLxpzMP84IYNCDaKwKmWV2+J0Kc+7VxRZddDRX8kZQflSaYsLyImd
	 PDSqjktCsrgZ9ogPXztNCNfbGMycKBXlOGZ55LbnTPUEoL4cchecqsuQVRgcLSkeAe
	 GTU5Hd3W9DZ6g6GlbxvY22Y4cLUs2Zmjbb7REJ4eQ+SN7s3SyHZuepEoSWJvxdCn9o
	 6hXBHRplLh5W8lZvSbEoSzNMXM37EiZlSXQpBonDzKBtwHF0wOd3tlYib8/BNEDDNd
	 IqSSFBQTB6b4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57314C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166467485332.11879.5004277157904945353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e41013b481a1e7736c18dbaff036d9e44545803634b2f384dd051e7afb4fc7
Date: Sun, 02 Oct 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664674853
