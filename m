Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADBB033DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64CE2C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663931453;
	bh=ujy256SwQYxMU+StkjFsC/RW92mXRa/eFFFquKj+Dig=;
	h=To:Subject:From:Date:From;
	b=FHlInKmShtaOiu39r4axI1VV9JaC1OBgALkU3I4uN6t61R61b19/R81sq8f5OewbA
	 V4NPQRf8RzP9FniRDxhFzFycPrt0SGRzz4865QwGaRjupsjb23IGpIoEYSVRcfJywu
	 rs9wPHYMVnNd7hFYhlhXvC8dM++MaFEN4DmaSjJFHKMkLhLSEYuDgGSUUwRPuS9BvJ
	 4P1GraeKH5wqn2+v8DWumr16+hn4OCeNkxuEnCaYn9ziFCYgrNrX0H6PJPyHu4XPEi
	 DGjGvnCbrGRGtIjwLsfwdSbZrrwAqR5Gs/4OzmCEGxoBRnbhC2x7FWsJBdRovonvgN
	 LKjAvpau6XDiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51218ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166393145332.28203.1270967405888890745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc109cea9a9b53fa6d020b61f5d9d0bf042c452fd8841fda68b5833702dd3a4
Date: Fri, 23 Sep 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663931453
