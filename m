Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6CFF20E4
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88AF5C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672737087;
	bh=CnJ+Qq0S3wb4oX2ssYTpEkg+GgZ084WVfdQ5VixsXCM=;
	h=To:Subject:From:Date:From;
	b=p2UGbgXxM4wyu9+43thV1D9pRY/uLmeTZlOF4OVDu+lVmPI2wmqX3XcEshVPti87T
	 vSJERVB2qTHyRQMAWjCnr5kCpzGVCZTiRPwqovELOXG+MFkY0Mm5wI371yiYLuwrMR
	 snajZXdIL/Ph6EVRXJtGrp78HKkA4DOx8JW+bg05nkoPTSrpsAz8PzdeAE2ZPuv9QB
	 28D6fCrHO1L9y5wnpI6fd7HCP1il7MpubfJDmA9n2oIfnslwdkNOhdVk8Cw7Xk/eUB
	 a2DR8qYbN6zTBGnHhHJrkXy57OhC6nFoizeYOYEfr6SGMmOdSPa6TkuLXoQNg12KCr
	 ZaS2um3ECj4CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E921C46467
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167273708744.25610.13268086371649333057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a97f245677a1f9029e4cb75e91449d70bd8160853a6f70c7efd5c0b33c8c91
Date: Tue, 03 Jan 2023 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672737087
