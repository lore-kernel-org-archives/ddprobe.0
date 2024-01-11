Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1599054FB1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqLSXLtg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 913A5C433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704998296;
	bh=0vFK12ce+72oCVdA91aYphfjS9DZHi0VNHnZ8awfHAA=;
	h=To:Subject:From:Date:From;
	b=rqLSXLtg7PQ1HIpdb2MJMloGQYnTVcV3EXF4tFHYWG8UsW2DZyxa2VCsyz++OFMyE
	 EY7l+mZYgbhmxRImbTwcsn6jMwnuTPxRUoiq5bVUb5tDCvNbEt4t03Rt/YF89mVuLE
	 61s8l1UtSDdzunn0m0bmCI/OEE0hREbsIww3/os+h1LjvVHTrZZF1Nzc1NCR93Ofqh
	 985dvs8BQnjvvNrtteE59QaJ4Uf31llKfq43G/I+GkHeSAMQgtwkRD6ZwhiSDEc7Bl
	 6Lzx5xFBLiaXyKkwb7MNoLjycgzYLl4z8BRur0CxMU0nNnX7uDzaOlIfLsEMJ8Kchg
	 Jh0U3fD8z2XoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 735DAC47077
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170499829646.26401.16583451147507852406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b906c502d30ac585cc222cf646f77a77470fcfe46fa60717a1fd28f1e988553
Date: Thu, 11 Jan 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704998296
