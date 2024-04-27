Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2021DFFD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 08:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714205545; cv=none; b=loJzAqggbJFWfC4K+R+/MRjxD0rq81HDBsCJcg6o/TFVuueoUctE7Ph9oib0di2RKQv4L4kfpPiCaaBPLOe8Pr/aJ0Y3KBUpB86iZYoFRXwUCw6DGEZ/TEpDs+YYKzNrntEzYPuHvReuSfyrySzWlxmSatneehnF0+aAFElpbWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714205545; c=relaxed/simple;
	bh=EroqOqqjpDIyMdYyqeqcc61QJmVTcAODs5sfTVdBH6Y=;
	h=To:Subject:From:Message-Id:Date; b=QPjRLaD/xS6q2amf7IuSEbwjLrAFiGmOGjY2bKD/yQmcljmyovXKmnDbJlvp0T9s/tTLTZdSdmY1LCeXS+VuPMcU3dgvW0iPP3n9D1YbWKpX5ekY1S7Q5R1dB/NpCGvVYMC8+EztICW6aeFiHduuixKRFN8B93evXkcQvK8MRxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vv5VyxfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vv5VyxfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D887FC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 08:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714205542;
	bh=EroqOqqjpDIyMdYyqeqcc61QJmVTcAODs5sfTVdBH6Y=;
	h=To:Subject:From:Date:From;
	b=Vv5VyxfUq1seoQxabIMEwiF4X7wrhzQjGqxVlhzUynstw6TJTFSrqikP3R0nlTXxu
	 x/NgUHcuSyOetxUpJz4L84ApcWzA0Bes9eSFWUjh/eDi4KIvsQiqyPPo5G7uTkIdm1
	 MGW+F5qXg+sfT0RN0yjizkQP5CH8C1iG1IzjAqD9RlnitDPCcwX70HAG5d8kiqqhCk
	 0U6Zj32VXW8P/IBE/J24HRriW1+/aDqhaEbOUIZtrcDcKNBN8w0pP4Ik6FeDl2ewHV
	 14cpN/GShI9Vb54uxMy1ig6xWlbM0Fq1efJlTX7pv/Tci/O4/rno1gDJr7nad5RqMD
	 Df5JF99+Yz5aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD651C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 08:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171420554275.19172.1171504241269742506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63bd2f44e263ec36692fac2ec3d9c4d3a82f57c92b7bc4bc8859ed9041bf10e2
Date: Sat, 27 Apr 2024 08:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714205542
