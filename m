Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAF07C
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 00:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD277C433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 00:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690504928;
	bh=aiD9MZ3B6/RFifBfHRlGLxDyP+AkbUXz6K4CNzMDayM=;
	h=To:Subject:From:Date:From;
	b=c2sXp6ZKdw/ibtnEgqMHsSQcDSWKs8IqrGrGeG1NoSYQ/ZGPNUBkPVKNg+3/+ujgX
	 01ath5EyKijz+ztqklZeqozAH8I6wxzqhdPkfhNG4EITSvy89YbJBD/5XSNqYeKJkx
	 WVr/fWtrvONgzW7aBUO8C2/g4TOXT/BSEF3OXB3AjQ5/mxm9gGvger5qLzO69Q7oTg
	 u5tP+tyOTSBH6RHYK4I0hK1viS5X/rI5rIL90Iu92th8xaEvEMNha97/s8giZI1Jb1
	 npj9hxtkhvlZA1M8NTGkmLI0tbUbJAcrjM3UrDLtaTceKxGIQkrnnQfIKSMOmJqZAW
	 6Aty633nWL2UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B060FC001DC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 00:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169050492869.23927.4987686935790147271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5273769440a0c01ecfe5127dfdf88a2116ba47ce4e6f3d33462fe39bf58e4214
Date: Fri, 28 Jul 2023 00:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690504928
