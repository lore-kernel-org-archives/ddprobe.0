Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F238A10E5
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97741C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673056287;
	bh=NyNMqWOOih4iioq+Obp9PAy5fKXsVIeR/vP5D6KT0I8=;
	h=To:Subject:From:Date:From;
	b=fUnkQsHdAs+lAlLwqkDxbN5rTLiN2VXgVPCEWFsaZHLTMo8fQ9MMG9RIzC/DNFFI/
	 XXD17kXOn8Mpuj48Kwy1w0GjjGKJP40Otxokw/Wsb7ydRlB5MindQDT9wydWrHZorD
	 /6wsjNOkritVD4+PVLiiD/Anh5VlFgmcr+Sq8wypL/FNPddw4k07PrPOSW1KapBkEG
	 g++ms9eKL056ajcDzawENKCPSQ/14KwiDG1iSws5j1UAyYz1m5SoMX45lIYrrhJRp4
	 SYkVR0b0U1WO5U55eeP9RWonfMdEmrB/3G/XbMl2CnXg+GJqpoQTo4im3+khvXFHgt
	 vu6S41gsQjOJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A924C5479D
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167305628745.369.17304973150710987136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d283d81acd4c24ee5c3cb23cc3340fb8a075322d5e1be7335eb59a02d1b94576
Date: Sat, 07 Jan 2023 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673056287
