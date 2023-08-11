Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3A91117
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 07:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3863C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 07:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691739188;
	bh=AUIrO0f7LGNE4SZ5rUysmbv3VHntb4VNCQW6YRciT88=;
	h=To:Subject:From:Date:From;
	b=tiakH2oGqYD7deyT4LPwaeAFsY2tGHn8ko8jcKDm+JEMzh2RkUtUMx3aOViBqrPGa
	 jFA93hy2261wF6tUsmUAUiRI/p5S91/IW7rQ2Vdw25ft8TshwRiLz1jxIvs0WnktpM
	 m4RhS0NdcgAj0ug2Ie9keOIx0mjhdwyKW60Pwg5YsfSphYur9BrafQWhae2rSGZLVm
	 WPyG3p/85lKV6OWF1VCZOWfg1wkmb787G8lSn+Giwe1KWfQWOvvhUJHxp9xrrbwNlj
	 Gtdq1n22UVIKvMPgrLsk7QYSiirc/9QcGkEPAFkOG96pyQ5lWXD3jLzeJGExnezFfL
	 p4rLiieTvNKAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30B3EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 07:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169173918866.19906.17226912423249508973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c54b23f8aa6e16163e3b9381c65dfe00ab8ae34c37bbcb289f491e9e6dd926
Date: Fri, 11 Aug 2023 07:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691739188
