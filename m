Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA9F79CD
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 14:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4236C433D2
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 14:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675174985;
	bh=1y/J5Puf4wgKoNxuw+ZiSWffxnGaRdzkEwLCIvhdkh0=;
	h=To:Subject:From:Date:From;
	b=cY9bjsk48wDThpBm/cyrDAjx4xcasGWp6trhhuhEm9/g7lDa4KTQ97zH0VfGkVRt2
	 T1XzsOjMZT390gwMEUlaFMrPVTUVCaP1QKDh31qzErHmEeOk3+Hs4dQslOG9Xd6jsX
	 5hCsSk/4C38EdtetlO+dSqpT/mgBA5i0dh/wPu6ZDkY+KurxB30sk4yMLUGTmXAdHL
	 mmCBIAegC5PO9uFNy+ThpwqLxgwxdFr5v4QwwwhHvEMXtMoS1mEPSWEpkQMIKBsO05
	 WLebY5nTmNAyITHVn3n/H5aQVbsZKOSsARbHyDYI88uWnlHAvfWb0OkPBSSeLvPrJD
	 16Alhr7ldVGAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69D2C38142
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 14:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167517498580.21699.9106959548198788713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8518935db705f12750312493e1d53262e0eb1bafbfe97f239da2c8b8a8d0839e
Date: Tue, 31 Jan 2023 14:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675174985
