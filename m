Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36D017C1
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2H5DCEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E04BC433C8
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697971696;
	bh=eZgNi6qCh3K57WIfbgZqXTL6rj+TVlGGx03P7TJMYqM=;
	h=To:Subject:From:Date:From;
	b=g2H5DCEAbiWYuxsPakRYnehLuqTFPPWHnNXBWnM7w/gg3Os9hjU/jOW/IhrBmL/5S
	 SNYQ5g/u0gsD770jtK4Aj1Dhg3uZLbwl03nmog9uSqg2p1cDdStt2/GCNUmJuGsOPP
	 80nSuCsqczlCuR60ygogodx/ZEk9MB10e+CtXVTyqJ3OJQnCjVdPvGx01n8kmYZBd7
	 2s0UmjFTwawPz1dAq1VS6tDtdSqe2AKYoccmAgTzLX3jBmrQO5irtpDExe9rTlaHXj
	 e6DsiX1Xms0NnrdU8+iihza3u64Xg9lnG8IwBeM6a5q0NRZNHa3p3DOtqbKWZ0khWF
	 qILTPQ91LV5QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD13C001DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169797169638.12998.389084838812383166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494f4260b78aec1a9e7d30a0707e24dc21bf392d1e38ff249d668b355314d974
Date: Sun, 22 Oct 2023 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697971696
