Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F096A366
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8073FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671163287;
	bh=VGXgN0r9KS5cyyXq7w6VWMRfAmVj6678LT8sCr7/AQM=;
	h=To:Subject:From:Date:From;
	b=cfki3vzzjbEA8rGWkn4aQa8K8Yl91byuXZscV052BY1b+zpAt06ZSgYog7jEN8Aea
	 a2afF+VGWHUr84APModN/5a9KyJCqxeRZkVBRVXDFwHIrETpSVhQGyFOckDbmGfrqF
	 ciFTdvFHiKkI0Dy1m2BWa7upA7Azp1I488JNDaovhQxTugSI5eJ38YNyY2+fug7kN7
	 1G0Qkg/CL/kT3E4IlRnnm93e2naznFwMASUVMdGJ5eEL9c61UiiOe+TxT0jTd+Xmhe
	 cAI267Dt2iNJFEU/kMrbuI+IsDcSZWigFNBx/UdLSvLsRb5ikGtzAe678cv0MiJoGp
	 XIC5KRMpqj82A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BBFC4167B
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167116328739.27799.17636514291561887191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8894e9b6a4f4bdb33503977097eb2a0fcef7abf0b68989c11ad699960389dce
Date: Fri, 16 Dec 2022 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671163287
