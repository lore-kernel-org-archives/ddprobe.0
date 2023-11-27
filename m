Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2E55382
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKavzJ9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B0DFC433C8
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701061096;
	bh=mSbFvnd6jwpkXytUaYlKeCs34q2JuJFtfYwaYuIEuJE=;
	h=To:Subject:From:Date:From;
	b=MKavzJ9vP3bsHGixwjoimUpxMc3dQKy9kX0nLJdp/5g8LAyo5LR/7T7dtoCYvqz6T
	 IqNL488EEZwZ4L8kBKChO+zpFZT2EA3Qg20J1HCo9lksyB9W0LNA5OCVBlZMpxDezy
	 +qJSsKjpPPWodFHOPX6P2cEbKfUedpJxnf6NE4rebyijtNEoGcRf7H2tRYI96waJDb
	 qpnG/mA8+2AhLeP/+fbn9CCc0im1XEN3n1IiOGkjmX9iSd0s7xyj+PjrnNfR76FWna
	 euT/pq04PpmKgmHw7jPfjwCe8BsepSENqSnBJaP+axoi0uTspacsyFqfBZF/urHO8+
	 LceakVC95IRJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CCFCC4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170106109641.20103.16866482373995591471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf19692db8e7b4957846d0ceab6023c8dc2c19fed217b297803575abec07acac
Date: Mon, 27 Nov 2023 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701061096
