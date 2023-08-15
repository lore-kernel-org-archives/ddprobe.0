Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7BBC15C
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 11:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5598C433C7
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 11:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692099788;
	bh=FOhMX0HLnvgwaX1vkYe6s2F1hQv3bEVEMMS2wvDbUo8=;
	h=To:Subject:From:Date:From;
	b=DGMRawBDMdWoF/w2CY+72yINYeuSETs3d3LjXhttSzztRTnZ/1aGep1Q9JOSH4XRH
	 8LCJ2k0w83YVsEcZGe8tUGg639L0iI8xqNZIg1HZH6iqeJ3gyoz3Q0+fUtUS1NtfuC
	 Fg05jEM11WtivI+veM+RQAZeRMLMyyhbQ6WZ+Q+eqf+DtONO1+QVtGGq5I6k1/lxSz
	 xJfsF8Ucj9jjbhR0X/7ngHuSvaAj4MgviAnOHc+yD4P4bjhR99D0T1YYPPnSTAyP26
	 WIFbql8gdbPj9h/8Hl2tyuxttgo2lUrKyHn4yZtjyPQHWP12b+pVqTA5DigyMQDkzi
	 Vuq/knJPYbR9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F88C04A6A
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 11:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169209978868.31236.9723433411279767981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d959a1ee4cd9907d6c7af2dec03021e7836913add22b27d782327df15315c2
Date: Tue, 15 Aug 2023 11:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692099788
