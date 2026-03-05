Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40F329A1
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772698494; cv=none; b=A+Fh75VrzgLmprimGbbk0KbTGtyTH8lzMYZLDai65/NKCM4JUMW1Ziuv0NxXE9g5rgKwmkgjYpask0558YQYY1PmZOlJbhXRkB/vq4wMjl9TSRRM0nA0yl1/QegiSjgwvjl+LG36e4gKTMjV3Y5aiRjGYQf3TqnvodJmPeQMeLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772698494; c=relaxed/simple;
	bh=a2LBNqZmNZGP+FUnfTE5UYSW156f3mYlArDTvgRAegw=;
	h=To:Subject:From:Message-Id:Date; b=fBQh8X9gt8JLd/Zlo6Jo8eBI0j9+N0AYlOQtRt0M8FiYgWKEdKFPIwaCOeOLgUX1j9W8WkPiMbjWV+P9kaqvqykLsJGsp2UQx+++h8DJhLd0RimZNPbxW4JFGhSpcoi4mKXMEozXAoayRRAgPCP5HXnrckg1F0swKolTLBXpBbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BB07jXOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BB07jXOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B0EEC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772698493;
	bh=a2LBNqZmNZGP+FUnfTE5UYSW156f3mYlArDTvgRAegw=;
	h=To:Subject:From:Date:From;
	b=BB07jXOrHRS46IXQl/VyrgfBNl1qPkiN+IymSX5tx9/1aChbV2a3sV1xDF3PIGVS6
	 mRege2UL6QDAY7uMOnlxwqCMa8AkAdjq7NSloT9NCfXOFM+grwJxzeCqLKdiWMkb33
	 f+9fZ7ST7JaGBJsq237uofj8Kw6+WUkIyYd4xbejIeNVXEJ/W3RlizHqzA+rAnD3G0
	 atH92aRGgkptrvinMRz7rH4b78TDxYQzk9eEvn8hODrR7w9A33cRNgTkE59TsQ8rt3
	 hm3vP8+K1XqjZi4LUGsk3x+BXb3gEHXCH3DLSPAhDtN2eOzJ+rygOlzzJzCJy0rX0b
	 aVZOLcjfPnLNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F258EEF317
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177269849357.18391.17584744613558304022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da9573c995936a25efd7a214d3b235c9e3e1d9d0a1611137f1a01209e2e3c22f
Date: Thu, 05 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772698493
