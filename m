Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BD01C3F13
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734651954; cv=none; b=hj+ygOh3lo5AKwaU2b6x0n8GN0i5F5hLm+p0QcG40mWbi927zmrchkd7T9XpO3khTWsVcIRqEEAmQQrE3OnE2FjfEdHCT3LWhI0q3qkyh6aPtiXvP3jYx+I08lSVpnDu9YFCUWO8WGgibw4WCRbdx1hK9IlUvk7uojd/iLGI4JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734651954; c=relaxed/simple;
	bh=ifqsdC1zrFrl5C7Zi+AitGc+yfPXfe+beFA54YFsTls=;
	h=To:Subject:From:Message-Id:Date; b=BzOe8MUx6cPxsnQx/GFmqWbF4/Rz8nu8SwAZtZHie+dz9PAvnUJDw+YduPGNFnI6hlLdaaVO4ERvsjncmoyzI+wkjP7utI5jxR+jt0VNXd5s1HdVzSAyY6hXQSJDI1Ea76GloOd27qiYDhZ58CvEbfUpu7L89Z/hZwdjjmZ2YHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZwx7u/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZwx7u/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8069C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734651953;
	bh=ifqsdC1zrFrl5C7Zi+AitGc+yfPXfe+beFA54YFsTls=;
	h=To:Subject:From:Date:From;
	b=sZwx7u/zuL4sazVq9zRPxwECNEGifcqCiJ6wr6lQdZ12ffyylMZKO6xuEj24Cp67I
	 RI9JVlh9nUrFV7TR7X4GbRduo/can05jKJUgnzHnMlKgF6DcwPDF9UQsLfqNJnhgoL
	 lP7ejngGft0HZTiOO+cgByGKA0i8eZS4Iq8NLBe6tAMQ+yoTcRDeHtQ19NF8C4EQoU
	 nEvrX+C7lgWIujBEmx2p4Ry2bKpwkJ+5XxjYbP5BmQybYBfH2+seyraZK1YC3gdCXE
	 uw97/TZwSdCz1hlUGlYyHFhsHGPIV7mQo6wt2Cb4du0SGdCgjROVCsAfyGDWBhWeVG
	 k5JJHa1uR+2LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940F1E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173465195359.26961.11883760540126692797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a086db13f44c82561039f346a8dfd05de68a8948935b788531af3fa7a760ee
Date: Thu, 19 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734651953
