Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372CC1C69D
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767251034; cv=none; b=tZsJ12cClrNaTlafzIsR6rXH/AAGLAXE2osQrO2iArhf7JnySwoAFqtxfIxBHCnRRpDDIxqopB/8PKc1hAylFgzQrylTOK8ZBfr6iXiYK57KFkWvEj/Ss5JAZQ8lmOAtbMc5o3NZRtCG1l/Wr+WpBqQRHGTzZz/Wz4dBctijtRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767251034; c=relaxed/simple;
	bh=/QTbTdKBYZi1K3MuFw7Crl5dt6WDwFQDn+BI/yKTW+M=;
	h=To:Subject:From:Message-Id:Date; b=jE5GCd61XVuDwlcGjGMqUP4pHXPaf65bP4GwdeWGN0JkeXWEnHfyOfQGioGtOtxsl4mawat+0CKFP7REVMLlJwLLiRvM8Gzn7QtyuFDME7YOfPK0z1Z/EHebixI/BRTYUMBxchZx9S9se9qGIEIZ2Yo3RJn0VzdiZxLUaMFkylY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgZ5tcZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgZ5tcZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CACC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767251033;
	bh=/QTbTdKBYZi1K3MuFw7Crl5dt6WDwFQDn+BI/yKTW+M=;
	h=To:Subject:From:Date:From;
	b=rgZ5tcZcz+iPNrV5UXqJkoulrGnT2Wrm0w2IoIFokhkbT6o2y8V4z8NQHekziI1YF
	 i4X59m2agsCm6qbTKR0bt261ZqUGkhXEhS4HGoflLKlgvIeRuQWYzntGNdFmR15b1p
	 CjgblkWozT/oaEnH3yJkXf6km8YZ7DrL8d0emelrTnKinXwl+O+CJDZOuRDEoQWHxG
	 /F+PuBXGHTjavYreMy+n2+pLXpbopUvztIB991LDZWa6GETo03+qdcPTcFs/RZB3dI
	 wDeaz9wjuVNqZZ7yxF05A/CUgIq5xh2BEHKZB/3GyvXKMZHycunVutCMVPPyydY8d8
	 jXdz8HdkglVBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926FFEE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176725103357.26478.14975734243316172562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b62b2da8d355290177b46548b4cb046bb1e1db2a1320f7dde21520098b12bed
Date: Thu, 01 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767251033
