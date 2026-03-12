Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C4E346E7A
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773285893; cv=none; b=H32HxlF5Z4zoPdVSeh2oNGD5/kWZEzQQMf7EUdMi4mNY7hrRgfqeSdVns/ldgR5+Dyvz+VCHbNanPHUGr7RD8u8xkh3KfyT0co5z+bFzfayNEGSEuj4ck0OHUHlWkODs5012KAASpdBZJmPVlmPnGaZ+Tv/xaYUTE8qQCAE6Nfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773285893; c=relaxed/simple;
	bh=WbafpgmJY9H8zFbwkWfdPBPlVSjdmgZ2b3rdYD5nCf8=;
	h=To:Subject:From:Message-Id:Date; b=mMg/l6ZVUfbrk+K08c+ptBixDZDj+RLGxYkJUFGlWld3KDzoxgWa5ig1q34y8NIPYovu91Bhxn9kPgcN97d8wfdgjdCfnsisRfEpLC2kHPEX1jtfbAn1uV66lzGcc96PBxXbZgGDdkJD4nPkxAFuKYOdI5F9sYLTtIi2eDEk0rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbtPY9ta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbtPY9ta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24C3C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773285893;
	bh=WbafpgmJY9H8zFbwkWfdPBPlVSjdmgZ2b3rdYD5nCf8=;
	h=To:Subject:From:Date:From;
	b=NbtPY9ta2lihQeN5r6P2E1o485ZRYd+vjaVe/qS/EPfLMANN1/3jrRYLWWfZ/Bt0Q
	 5SZd4y0pCQAPebtJr7TqMSqR/6gVwPuP8UiaIn75cqaQXL/tt+P1ZMltZV0sjdVYbD
	 UzSWNa5ESqs2ZCRprnx1IhJQCJDneQcLloUx3E/j3mL94Ox7T8hsodyV3Pi2QTL9wH
	 EphPm78Z7+lNjw3xf2/K8rpopPTv+WtrGwS9wmWId0220AusJpnvXpwQ2YeE1gjftp
	 mQXoTMf71a+dai5AUVzVGu2fLeDEBezPTFpH6uwap7+EgO726osbLcdYOpDu1AVjPo
	 MF9v1SiuMrpPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90572FED2C2
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177328589358.13422.7048006033782078723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e016cc19441fbc246be2075fac9254bb33ad2a436a9eebee36d42254944ac1
Date: Thu, 12 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773285893
