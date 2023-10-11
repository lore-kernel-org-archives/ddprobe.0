Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0187C200AF
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 14:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svRpd+RA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB20C433C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 14:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697033228;
	bh=LRFF8tjpRpnxfw1hRWN482j/lInT+wCVMWYqzGTslpo=;
	h=To:Subject:From:Date:From;
	b=svRpd+RAyAs4L9AtNH7Y0i7R1HQel4mzU2rJMGzZkea113PL6NNu3OSn5fJodb/Mv
	 MVyLL/F/qc6ZUnMmLxTB++eyEVcULAtbVwSdMLALvhAntL8EZOlo70Pb9hnYUiSkHQ
	 Myt9ktap+uN9H3ZixOjjFOBVSMzbhCZSquABChtv1LBfGPb/csYCBY4IMByqr7V//v
	 7cDbWn5oeMany+VuDViVmFXoEFVh7Mz2i4TUpr3PbOFrpEeK3Db2ujhOUclGs3Nzwx
	 d74QNGD6h+VxezsuIjPYcGtt7f/BwCbJw4B4Oo3PDqxjBQw8taDs6Z+r80figmnxOQ
	 eECUAPX9airVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF29ECD6E6E
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 14:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169703322870.12855.4649049434140526353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5096ba8ee1ab664300e1ad6883292f4ebc39c29ff9ed541456b2e4605bdcb6a3
Date: Wed, 11 Oct 2023 14:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697033228
