Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 037442628D
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773482094; cv=none; b=eqqmvt4TxIcsJWMliBGi4GmGSzhzN/tNWCshYmqlN5OZYT2QUA6ka8oOAE4Qrp4OnUYQIN2IGzFN1OPQwiQQ2Tt0rYXyzs+Hk7l6sQzv6lZN2Wh3BwtMOXeGSEs934STl6TFFsC/tFBunhkyfroy46RsNB4XgsY2Zh1Gpm89n5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773482094; c=relaxed/simple;
	bh=xwkOHJza+mpQsNgEIyKNmaLhsDh3IrWragY77JfbigQ=;
	h=To:Subject:From:Message-Id:Date; b=Wp1OXKNlBP3RavGAo0QGpFoE8TtWyJTsyfSwIIJOcO9vqxaeXVlMHICgWR7/wAzlEP4EfYVl92pTVjkhuzG/Wxin4fa58NT+sMWcgZmTNYOFFj+Ax0msBThWbcV5t4owA8z0emvBXu4jC/eXCLprr0vXV8YcM9Ujk60ntH7WJmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jy1cdQgs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jy1cdQgs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D129C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773482093;
	bh=xwkOHJza+mpQsNgEIyKNmaLhsDh3IrWragY77JfbigQ=;
	h=To:Subject:From:Date:From;
	b=Jy1cdQgssbU5TA6n20wGkyYrDTXFueY8WGqLjAe4ynycUBRKCg8HS0DeersHmNYty
	 ndwzTXZI5rPOb9tLSBPWD61C/phWJ4+XLSbhF8I7lAj2wSRimv+u8/G3O3dLhklj6Q
	 aEgAZN9xpsq/GnGwfVPiEXrne+PJHgq+Ps0GtecwTiqr3UF3WV8adxhHALmEXCn5Yh
	 MekhalcmYaR6LqytFOhRaZqZ3uWYewqkueUd+jEhe+GPpLfMZnw7wZaoJqc0rNoOHW
	 WJLQVDoJ/ZteP3wVERbFZQLOezi3d5l+wJv+gggNGtI1x0wJTD3kOrgtQMsRhZzhTB
	 IOiKv1b3Vy6yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E76410706C4
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177348209357.25619.7202448973996206980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10925cba4c090be4bb0730d052782f0820412fc199ef273b01fb7a284a1a16dc
Date: Sat, 14 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773482093
