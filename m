Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260871EF091
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766931834; cv=none; b=rXBAeQg1i/oFk0nfyGN+SkcDNKVTQh5SDKYThaoMI84N0+4Ej/o9WwFUdBuJBYsHuDncB6dJrnAuHy+tdo0iyxRURSbN0B68vMTU/zY4vvG9UxnnhfDIWc7l6nfQx7fcu+jHWHT6KuzMXU4kU9JmlnDHx/URsIWRmrB2ySLOa0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766931834; c=relaxed/simple;
	bh=lRy8oOilPK1q3jefPu5sxc61HNfou6MYhyKgS2N8ZYk=;
	h=To:Subject:From:Message-Id:Date; b=LGtwaBzkMsmNWpCL181NgsfRYtNQxpQ5+tn13VcI1wfgU5os+QftRW/82F8WIH8+TlsfWOJSUbOoEE2EhlP8jLknSV42A/uAx9mCaI8+oboR2P55mFdtTtc3nEM0jDWIsMS542sppKIfN+yl4LfE9cs59zcSXNHiEHCqKLq0gvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wv0FQsRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wv0FQsRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C03C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766931833;
	bh=lRy8oOilPK1q3jefPu5sxc61HNfou6MYhyKgS2N8ZYk=;
	h=To:Subject:From:Date:From;
	b=Wv0FQsRc0NAXf+HGcLIS1nX/uKFUXxLQAXJFynIv2vl8L/0DC2t3r6bpbp0NQWabj
	 Jv9fRklTdTdQGkGSTmeYyEcqKSlc9hLAve30TFZchBZPzH5tn2xIY8OWo2NFhbmwyZ
	 7MMERYF0oFWqsszxs7/7lZbpPic8V6w6+Jd+/kaOZ4TuGLKyzBxH1IXw8K6zpKYkPr
	 GrtKjngTp033U6VhMuYylPObIXeSmJejraJPkG38JVTLIvrBxv56k3/lXqt5J52ZyX
	 6VfrRNbMZXH0toBLLbJ1C5jQFcU9NICvc/4C/1DTI1VNni21AV3ocrcz7MMm+PTit6
	 icH1YoDZr3L3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974EDE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176693183359.25023.13921486906906755749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faaa9fe96294e417acc6c32658eb9ecdc41155ac73f1f4e18387000a4ec99ec1
Date: Sun, 28 Dec 2025 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766931833
