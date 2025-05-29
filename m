Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB034C92
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748551794; cv=none; b=dfyALOSqMLJuTLRVW9rTxe1v0CGPiDs2IoGAMASjTI98NGafb54NDQG30++SF4oXXyDBfdqb/4iWiLdCn1Y3YlYzWtQF19XrTqB6k1CeoD8km4z6sD8jo0RD0J8U/MuD1XquwL5OLxqBNdxrPDFuc3S9T2684OBY0iKoCsUNM+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748551794; c=relaxed/simple;
	bh=rKu/d+cqHV6aCS8SQhgY2F4uJy9Rp6tjKoB8staheXQ=;
	h=To:Subject:From:Message-Id:Date; b=R9MsAfr4w7jK8i31lUxzEHKpdekcoWS2nyPMWOXwmmanW0B0YsL8qSdclWoArJQdXs97oG7vENNwZqlYBK4z+LimqKUB+JHOQuXaVnf7LwCVxe+jXvbO2qPeaHDeXXDBtFJpCesmBtEAwuHpE8OOuhUSsFePF8oJvf6JEXxUnFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKyph6fy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKyph6fy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A5E2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748551793;
	bh=rKu/d+cqHV6aCS8SQhgY2F4uJy9Rp6tjKoB8staheXQ=;
	h=To:Subject:From:Date:From;
	b=AKyph6fySHn2jf2iNVcrO09O+UKpbkC3eQ7W53kLHOk7I0ZgL4D77+74+jtBbUw0z
	 BHwpibg6AIEhglMreUz1N1C7X2laS4aaiDknhsyX9j3CTobpXzAZSzc2K4OfwPe1QN
	 KFvMnRBMxcy75sDL13AwOS2LHrirc2HfBEuJVYFK+jI24VrhdlO6Zez6zrcxrffQHI
	 RxOKKaR30eVRF2JNGYH3bCHLORWKa17tMHbxpYniFtqk+nVDXOkmlOZUoqBwS7jE7N
	 jYfGickPZjvQoRvFm4yIzkDIZOZGqDgCv4DRIU7MsH6roHISTw+z/D4cXFrPXZR4w4
	 Q3+m+IjfZoI+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E907C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174855179357.11725.5357892485832262720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257f62ac28a5a07326d11dac029ba5285ecf5fddbccc9ce2cea8ef0b06565484
Date: Thu, 29 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748551793
