Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A5B3D6E
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 09:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B66C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 09:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687512788;
	bh=gv09dFosCM+jjuXBTiHiQoZWgVJlh9Noh9XkJAPxLi0=;
	h=To:Subject:From:Date:From;
	b=lGcGtaDYw9GP3wfHuDF45FF7lxkMEoryD/fHS3xt0D5EEcPBVkX5CQx5BKdL/EyXt
	 JqcdsHWtGdpwkSsOsdFUuth5ZJRTSWummyDls19Gqy1xMI0lIiBUnAbumnCvpIApuw
	 eWtfubVdanhytrAQbh2iUg68/DzlZzjOKMkt5Lh3iUDz1CBHaa6DNWpfhSxl1A+jp6
	 HJyghmDRqUsUlUxLUEfi7pl4wpYlBGtssuCtHA+THpUo5acjwZKfnKvdRBYzlR2ExJ
	 PoE2UDPB76I6bWpZY+ocydLvlMRGxDy2Py+nqITPISMGmce3ENFnup4WlcfrKtM1fw
	 NvAYIUm1WGEnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A852BEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 09:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168751278866.24073.14743331970261280546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ae1cb87b4e5994ac342a762dd9a30ebac01f77c6b978dd922ccdb5412911e6
Date: Fri, 23 Jun 2023 09:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687512788
