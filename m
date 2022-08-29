Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B20C5181
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 04:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC68C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 04:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661747452;
	bh=Ye4uLXaein2PV45BfmUVm470YaBS8Il+YD2iSjetgTs=;
	h=To:Subject:From:Date:From;
	b=g7C6bsP1Cz8aZeepaEsbLzV2o9/EpQsCk3HwmzKHlA8RUgYwbD+x7NEYgym+gnQT1
	 NOz0nGNy1PSv1FsxyL+YtW26jq0YoBzU4BFgZxPciN0rfgbtpAdwusbnDxUFgN66s6
	 fyorDL0dFo0FuDeoOkhlTh8e0B7t0qHYk6ikOG3hCk5Zeg54DdEXInXz8lK3vJh5I+
	 a150/AgRpQB1W25xr7uwNs/+SrLTRhFBvInoHjIbJUI4MOxPIN0u7eD8k11CkBhnTT
	 +jPFEmpO9rIQw7RJyaKrqXh9ZJXg7EpxTHaZPQMvgIqaORbnp8VoimSj0Q+eA+Pn4I
	 HCNQmchgGrrdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 562EFECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 04:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166174745234.17495.5820340797744996412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66912fee481971858202d8bcdc5c223f3a8b91309473c436d7f76985a2552ef0
Date: Mon, 29 Aug 2022 04:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661747452
