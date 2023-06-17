Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0747481
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 11:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5DA3C433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 11:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687003148;
	bh=7tVo3ndmquMawfkiJrlHVECgep+LkKso7C4KnShD0wU=;
	h=To:Subject:From:Date:From;
	b=SlCpQMUhjyJTj9IotOXctYaZPeAbn4zjVMbpmfdDRJVxz7R2OTxW/4400QWDjDqxM
	 zT4SBNRvjoBmDMxRxpK+IAZg2TtsSyDOSwyHhxgxeN+wYKvHq0aMxtoi+m3qz2sKvk
	 GYrWWG2QmtomgHSy8oIjCMgh98Dyt0UIbgk6YvHk1H/a3CKOv/qFnZJjYreFORyNJf
	 Qd1QI3/d2Z4CjBHgGVgD2WVMENM6fkuTzROU5ntKkkhhyJIDd5Pr4tDls62pfcKM1u
	 8DIdehEhO1dQ6pcftP8qy5ehXMVFWfSBIX1EFtOJWjK59HsbCzoAhWHwnCy1A9mvT2
	 DV0orfEy3ih3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75CBEB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 11:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168700314880.3667.4702137914072747748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad096bce34f4b6c1afc9b5d28b6689693f8f75fd184a9d9dd66f4a8364e414f
Date: Sat, 17 Jun 2023 11:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687003148
