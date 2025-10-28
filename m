Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2393311713
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761629394; cv=none; b=oYCpulieQn0hA9oeuAjRJ4JjGajlALqnibmbDyJB/4yO0RV1ePfxMpSYYted3MtNdrMOTP6fNnTL2LlQPS2FBYwQHVzQ1c6RgpWQhnsqOkXLhZwA6ubM8oJC39/v281E5coTSA9ZQqjvUQntq1ibh825Gt2g0LeXbYgdoNtY8qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761629394; c=relaxed/simple;
	bh=w2SrzsEgSahHt9S3KcdsvxEGNP8WEr+PoqJTJPSRmTA=;
	h=To:Subject:From:Message-Id:Date; b=QqOUaqwo/ZFdU5pcqWKG8E7dl9gkcTuglee9pBDB95u5Y3wQafJY8qAY227zG3/G6F/tZ94NIHRo4XQPE4LKbDEvuy5DCZIw3xJluG1pvm7CtEveF93p7AYIb04xLyLxj9hnKxLpIkv/0vE+fugfmf8lS3TvIQHzBJAZvOMGnf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oze33UTR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oze33UTR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFC7C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761629393;
	bh=w2SrzsEgSahHt9S3KcdsvxEGNP8WEr+PoqJTJPSRmTA=;
	h=To:Subject:From:Date:From;
	b=Oze33UTRYcjW+CHQEnyIoU90q8ld1BMFDMzw00UWHqNN2+KrNJDKPbIWiXOB2gxV5
	 Wv3bGTec8Wf/F8kULL1POk/TDY6xM24KOvqTU+b8ybWgedfqDMXPYiLHUyDy6q+j3M
	 FF2rAaYP9PiZhf1X4/sTVHmj1LV1JBTBwTSl8NU+uAFi/HkzIPBdJPo+980ESeHUiM
	 S4EYp1zUqlHwSJJeLSDPDL/mR3aTHdxCdRz73l/WA3s7Dd4EDyodQzhpvi+KRxvL4M
	 7xCqnx7zOnJGTcyX93/zwhXuwwitbMOmYy9Je4TQpzWBqL6Z9gO9yUTt9Inn1waaU7
	 Ir6N8JGpnROWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D42CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176162939359.14285.3308495675497747934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08464477e0c51396995725d7d1b6f3d09f8a8b8cc6128e77211030b252572f28
Date: Tue, 28 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761629393
