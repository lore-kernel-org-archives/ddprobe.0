Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FAE1DA23
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776518854; cv=none; b=jiWFd562MMgQ4qOHQvb5xaWLIzBr2o3It53eNFHf/MLRPwEU9KmVe977+Kdc6c5b+eItnJhyW56cfbY2ZBTbVyBSf+SYOJCx2AmPDUnceN1ttsiyfXjkH56EUQpC/OEkVqt4Y2hzj0bgsi0xtnVdOvIxP6Pa2g9hLiL9aomlqI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776518854; c=relaxed/simple;
	bh=Q0f0NoLt6B5kXGdpXt3TJCSCuOhvrzXBPDVo3GQbAfo=;
	h=To:Subject:From:Message-Id:Date; b=R84RXzLJ0xjhOwzgMB1Q/dAV0+CAqk9z4n8Jnm6CCPZCaiJmZi2LmL88c9cDo46n4RUR92MqoGjAng2s+CZvsAhrZPd3DIVQ36WyUrnY0HhJ5XEynXzsZ7tWKmbCEsmAZp3Tq+xGFp1qrL29fKrsEMORtuJv5LqVH2XnOJZDafw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVuYOd9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVuYOd9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2182C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776518853;
	bh=Q0f0NoLt6B5kXGdpXt3TJCSCuOhvrzXBPDVo3GQbAfo=;
	h=To:Subject:From:Date:From;
	b=MVuYOd9WNm9E5414QJK5nxS/X62wmxL9ETgaSwTjMvt7o9TK5RCoxFIAXTf7PLRn8
	 IqdJTWy+nzqsa9JpiUeD4vWgy2qZNpXsykUIwSSVtDtbSOpPNWd4qGSVfZfhw9z3pA
	 I9HGeHOLpHN5dFBTzPM5jgoiGUS7OBXmN1tE2QBr1CNpaEf5BfEdaOm+5rkV21OPML
	 o4U+NjLopJbJ3O0QDzCtX2Um9vJNQFuvdpPVSs8aVsG7R9Zf3RezAgNTIBJ8JROLru
	 tf+u7qPBfEiiHrNIhQz6o9pKlz15ruRGNcAmuBEHCb+Ei3MPtNVumJ6Xgo07dWqsCu
	 qugFfvq9rWSyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8F9F99C73
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177651885368.6997.8358890624748737331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5553e38a52037c27fd62d368712b59dfb58bae3b58f64d9d3f0f314856f8ac
Date: Sat, 18 Apr 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776518853
