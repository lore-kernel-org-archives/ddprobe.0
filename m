Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7DE20E7
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CI2MXoRZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98A58C433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704017296;
	bh=+P8ITV2OLOkSd6uMAdZyxFCx3m3RoUuXF8L6a+YTKxU=;
	h=To:Subject:From:Date:From;
	b=CI2MXoRZMJ6jsHSaT1k2FA5uJvpPu3eBbYfGsJT8bQe/xS1OdzYzEYtQ1n6TE7YXU
	 sAQXAbsiDc+RCgm4NfmncNtnd4yCCSMRtX8tT0OyosZfh8kgsLZ9s5tGqQSHbBkdfB
	 FEgOkFyAYzs2Zuh5O9pLau5tkaxnd/C2oJbWRDpDln9G3IYAZ4EPX1nZGEE3sHvZnF
	 ONRBnaV+fXFdgB+k41u5z0J30pQoXG7HHd45TxWbO+LlErXEZP4R0zTRjkIEk58emK
	 4SYk/vtgcgsfhjutWDav3XsswuzIVi6qzEAUqWPHOHd6d5fh8urcFz/SBMPanVorHn
	 aiizs0840/DEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74264C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170401729643.30608.15478479860260089747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961c0e1298a34ce4314731c0f0155448f40ce591321dc2ff802d61c1b847b3ec
Date: Sun, 31 Dec 2023 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704017296
