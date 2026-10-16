Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279DC3C277C
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792183834; cv=none; b=gevBH7le0hJvT/nYhryu6fPsAz44FUAWw2t9rDtNQTKLUaiIVtt0EIxSuv+7eBg2LKu9gzANIoOQVMizq+vYQTkeevY82k5Gpm/wV5gizj1OE/WlQTt4YEu4eXbuuQuL5U/9UXK1hHESahRUyDszp2H2NHKmk59hVes7qzEidJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792183834; c=relaxed/simple;
	bh=p4VCmSewggoJ4urT4NfNIT66if8QwFzspZ5SaUjb+Hc=;
	h=To:Subject:From:Message-Id:Date; b=KmhVUDM9ABB9gHdD4b5UDld1IG8bFZ3tVKgcLI5tvNw4PCYFBkCyP6e2XNpsnskZFuXFtOKrnleWiINJbbJ+5ldt/BR5M/hKW8X1Vh3YKwDAsPGZNgxNlkqlPSXE8qI1I7cxMDSfDSRGqmHuJaXGyyG35fUz3Hulc+X+LjDzX3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJXuNp6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJXuNp6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5491C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792183833;
	bh=p4VCmSewggoJ4urT4NfNIT66if8QwFzspZ5SaUjb+Hc=;
	h=To:Subject:From:Date:From;
	b=qJXuNp6L+vgkNJl2DwhEGz4dua80jHXUdf2tjZ0f5kDcpxPmjxlhXOjPlcO4kKyfK
	 AxrslqChDDZ0YWNQ+TySSuc82KZlnSz+rGCqBr6khqv44skldS3DvA8ynDJvJ2K4+t
	 CGh/XI7hm510hQiIT1O3M04HDf+XgieH3CvwXC0z9gINGwwJzftML44cYtBSbQz8RV
	 4sdvOU63drq6F6UTpWgw6mlFPdD/Zrff8u8A5Rm77TC+/baEFFXdyFzt9uAOX54u8J
	 YxzbQQ+hbdBqVsuWhwQE9lqXAyEI9pSkIkupyLmHUr5ShgKdufXbLzbT+etUnCx/BV
	 CyuYH/rVnW+LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA8FCCF2C4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179218383370.27382.5822966172138333410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b375dcf5f85de4496295070d3019808c18bd8a14a7c2db13adfe980b92098015
Date: Fri, 16 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792183833
