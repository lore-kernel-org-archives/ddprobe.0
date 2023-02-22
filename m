Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C3E10E7
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 17:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2FC3C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 17:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677086645;
	bh=59vT4/mazdD/iYkz2SeeuxVnvuZ063LEc8TAT1YP+zE=;
	h=To:Subject:From:Date:From;
	b=iDbcuoe660y58MDsGs6ymSIkMnigAVcS68KDDrtK1WldVVOmIv23HVfX+rzDAflfF
	 ncdl/DBmJSbG8vJto0GoXDAoEXJRh+jitR5NUoWWlDtauIMQ9b/UCuWJSfvydRgjoO
	 zrpWJkl03RQV6w4CwqWW73k2SfNBCYoyWMHwgcTcER9L6BmArrZSxQRVY4pNWd5oH8
	 th+w/Jow5kARuMDIDwrtDyeAt0wpfTzvvNUcmILI4NOyuno2dQQHwmmgx/J7CLkLLO
	 mfxGrakDjSdAOgirTeazCQVlGXCFQmOhWSKuajKVcH+Neb8ecOKuoiH8pkBqxABIHX
	 psqiPlp7uMM5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2849C636D6
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 17:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167708664578.11534.12787739746078483456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c981129500f5a655c61f0b374017ef92e538396c4d5f1a548fa0171134148d35
Date: Wed, 22 Feb 2023 17:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677086645
