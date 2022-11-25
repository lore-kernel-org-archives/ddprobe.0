Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C297F7F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78553C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669401654;
	bh=vBiw4+X6+FI7XBTkkckps81lVS534SvfFWR5nOujbLM=;
	h=To:Subject:From:Date:From;
	b=Q6IXhQ5O8COB3uNR74wXSlrj4fGFfZbjmbddJqK1rUiHBDmlQ7o1yzDvnsPdQJu1N
	 ++1D1erVDLChes6M0D3bqNjoHGQCeM7eQjUkYhuCn/aj1omp6l+pp2pqpiRVioywDD
	 jfSaUROSw3tfOFBKDySsPeZA8+dpj8KM0AAf1wrgpVsKT7Fvrt3HrLQVid70EsOv8+
	 5qK+vRdkdOsLZC2zuprOsEc+6t4UxywWy4dnpjnNsbEMTtDpcO263Mkf6+IwiuzPS3
	 tsfPc10Jr2bXNhe3D7Gzv1hauYvzWa1jitRNcnH7eiubZ974RIbQBqYat5sR6tNWXI
	 JXEelSIasGYdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5981DC4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166940165435.19099.12030319375547049701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d1c5a3716d95fe7e0145c6cae8fe347da5fc27caa2a1e8817042bb6a4365b2b
Date: Fri, 25 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669401654
