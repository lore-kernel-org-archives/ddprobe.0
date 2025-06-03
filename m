Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472821CCEE0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748971794; cv=none; b=A3mnB69HxBTJd50bk8O2tbG84al/AfqAuqfEZeSDvmk/6vwC3yok162SPVOFdK41bvgVTq/dSZeKFRl6tWIyrJ1wnlzZ4lztrpXobuu/JBtiiPbfvPDZaoRD9gV6sgj9R0EoLrt4OT5W2sYAQkS830GRyWHLl6b4aDQgmKOYf0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748971794; c=relaxed/simple;
	bh=6Oe0YAWcmEAAGTg4Rh9D2J3+xbJoBFe1FvsRTz+V+Og=;
	h=To:Subject:From:Message-Id:Date; b=YtNvo1n6xG1aElF1m+Ul5qaZrINGUH05vEHDodTiIYg3hnRQ6PlAKXigH5xIaPV8m2GwsH8ZGMvayHLOITAE9USkSbYQmdcxnYCjS323/h1zO4taa7CMo+gA6hOOe+QxaVvySdf7nyw6dxZScjh6FpPqpqf1gaj9x8oY5jZOPRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlVucSil; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlVucSil"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46C0C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748971793;
	bh=6Oe0YAWcmEAAGTg4Rh9D2J3+xbJoBFe1FvsRTz+V+Og=;
	h=To:Subject:From:Date:From;
	b=rlVucSil5coQzndNv2u48TDifuROv3tXpoUkab8YJbNtAkv+eV4u4u8MnGeNqwrm1
	 Z8y53KlWfxF5jGiyyJCwblcN552OW8YV3yZJNV6NFRM3Foqf7EKUJ8IkwC/rZHeuMW
	 CIFbNanT7S5+iWmiXrGV9Bzl3/N/4IXOrPO/qZiEWkfTzMghnj1bhMw14D4aayxUdC
	 3Q86m3BMApsq4cXGJBaTV80HdH+34A31sIBe2Z3OfCHEn4MWRjJUI0tAl90kzfvJIY
	 bCj9i8DExt2uMT0TWuTxDlJazmocYGROqHIksvV8NWAVGZ/JgOVtCUh1Nx7f0yTnat
	 UR2hzk3txjZXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F69AC5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174897179357.19987.9407487280175801164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b55b51bf2b250d8ae2126d54550c014927907811e5b22d16044872bb7028ba7
Date: Tue, 03 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748971793
