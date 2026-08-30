Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402DB35C180
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788102634; cv=none; b=VpfCFqIyfBT2IJrFAqvTG/GZX4l01+e/+2tMYTGO2uX/Mndqu0yO0hdBnxwExBbzY01UKaa7oYPRUvSUDw9EISWvqt2hxdlAS/Tvfn8jK1PTwP6TVoyQfUdkTNjw2CWQfToXfcejygvZrY6CuFprSgZuLgIzP7dZcTmB3nwwnzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788102634; c=relaxed/simple;
	bh=77SF/SxKll0JJp4Dv6xCaczNuoj+Y9qy+3NZr0n0zhA=;
	h=To:Subject:From:Message-Id:Date; b=nQO2MVz2dt8r0LPaLBJRx2QTcFRo9CYA9uNKEbK1Rjky8X230Hv3SPCk0TMiJ58qfz00cG7MvJsvPtZ7TRupcgnjIQnrJ/S1HzvmPKxGbuXhIGSV4V3iKLzt3OtoT6SvhIVICsK1snTwTdDCsJfkvoY9Rik9kQ7w1+3kFAhVsPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVA8iC9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVA8iC9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BB2C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788102633;
	bh=77SF/SxKll0JJp4Dv6xCaczNuoj+Y9qy+3NZr0n0zhA=;
	h=To:Subject:From:Date:From;
	b=mVA8iC9ew7tauilUPH3tkmJCqkuXg5cvyoeRGkXePt/NLYJ6XV7J9HpykZo1Ut0NB
	 xuo/MFc5QZXkt8jdjk5AZRotNysAdqcBra/537/SyTE8s+tuwvRFlwiqSbwcabtay0
	 uLy8IeMLkVHAAoVGSzKtVaitbq7fdjMMxrJ8ahPUklUNjhFtWhVRyWdqcPA5kKk+lG
	 HdBzeJ8w+5cYxL+qlaYv/IORMwBPELFcMILbTL+pJnpczpsn8lHW+/C617qDxDxpx3
	 mVZMg+nrsx23vCdccKSrDjk2fRGslUDz1jcjm2JhrUrwkk5cRd59Vn+Fq+Nb8WKF7q
	 1Ue4p5XYDZUUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF7DC61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178810263368.21420.15960896461410078846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eae12df5af07ae778c7a0a645ab0140d590dc77310c834b16185075ff416726
Date: Sun, 30 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788102633
