Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F158F28C85D
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750961996; cv=none; b=kakAnr/V12Tw4tHJh3JJ2cbK+BoMGQ7prDvgqNiPSr/eC+4e331AtrzVZLBA+eK2TXZcUN6GsT40ac2DHc0sgiUS9tegEZ/PEmvJ4Xah7Qy4Dxn7c2k7IoMlWDj3eoqMi7WYyBNldBBpDlzQXBdcYGRMtxjaaHnzn9wO1eudrzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750961996; c=relaxed/simple;
	bh=M6Ytt9NHbTTVQuFk668OGVbINSdONfyTucZXGduC7pU=;
	h=To:Subject:From:Message-Id:Date; b=tg3SJU8hxFQYp344QdF9AAp60pd3xECmqoTOlaX/F7x5C/SOkxT3/x+w3AY7QbBtVH9bklPxniu3RoFdDiAyv3QU0YODkbk8zvDHMfSAyuXxCQD3TeVOKjOV9cGnxmmDPGnGgHnarV1i4fMXTNaifjI6qM4NA90cOBWezitzjy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YF1QxdS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YF1QxdS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D05C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750961993;
	bh=M6Ytt9NHbTTVQuFk668OGVbINSdONfyTucZXGduC7pU=;
	h=To:Subject:From:Date:From;
	b=YF1QxdS/6ANNvBW/EXZE/qaw6/9EMkzaPiLCFEhS2Op0NcRoZP8aU2a2OOdqMP9tB
	 Wr8MQyt0kNa1yXfxqmvnLoE5ZavE1eBmVMKHvdR/iStp0idv12THLSMVSD2AOvj0j0
	 cHekIBkdqjZxw/J3SHw0hY1tQaofOsaqE3LS7p909jqrXj0zM1aF6tRwjunN2harqQ
	 nXz5YvYDqnvk5IpEjkDLQAxLoKbA/CO7yWZq6NZ950WecTBUOy6UMgZDrDbhHxxHqL
	 YblYQCDCuoFIav/FCCWX7esBwQ29Vj2XsFRDSHCTpc3hvy9G94MQCSXXGZjP2i/5+j
	 H/zNKNYZKh+Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9655BC7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175096199360.25547.7569715943982126558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81712584c5cb48bcb64368fa02267a22b02373afbee97359ac9b2d865fc64d03
Date: Thu, 26 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750961993
