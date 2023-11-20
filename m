Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC543B2B8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R61ujSKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84A39C433C8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700524096;
	bh=FoYo5rR8jdTG6cu5QGW3rVPN4mGEpY4q1e04WtjbK1w=;
	h=To:Subject:From:Date:From;
	b=R61ujSKxtP+jdRBG9eFKUFz8Ha3eBUO8Qa8g7ZyhBVdGMeoHiDhO7k/0ehs2AON2W
	 1hC+iNO2aDeI99wFxi9MXMEBoHHOP0zA5qM++1iKip9VeiyFwxypCRu2MbEPtSjd+6
	 Y6oKV/i52sHb1TlBWcIXHqkDcdPFHo3ZIDls0CLymILMbEJLNxnvAahuHn2k05vHIm
	 EALxeqZZuvsTXV3dcWG7Qc14GgH3CrYP8jDi4hyKZ7wIVxeuaf2y21V1QRG+JqvJPT
	 Zcb5nKu9ZsJmHGZQW3SOdO3+PBF8y2BqwiB3aCH4wRdoK+vrmwSMCTr5J19Jr4+BG+
	 X2jEJi352awIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 676A9C197A0
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170052409639.30833.3957753177515801859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb6d91d8446c0c4a11485a77283cff7d7e131df5f15f058f412fe54061b06e2
Date: Mon, 20 Nov 2023 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700524096
