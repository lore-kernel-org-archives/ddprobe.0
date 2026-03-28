Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CD332936C
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774674894; cv=none; b=mZt0cEri7kX579wMgVPiGvrrPTusZfW3GnmK7Z0NpZBX+7GBFHS9GGqk58fxDOIN8/r0qvOFBBUYtYJsgnWZI+s3dqfQ7C05KBwWSJqLxpEzLpIZ5Yj5EZv5LcUtXhCA8X5j4aKFzi5o3STaQAqElUT8Nzwn4pz/ZoxNWip3Ur4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774674894; c=relaxed/simple;
	bh=bze8Yn0GwjNuFqAL33eCvEhTCWDmOmg3JDYAZoksUik=;
	h=To:Subject:From:Message-Id:Date; b=J43JO6BoSiH1CF5rL6GCIOS9b75HdLWdBFKaTPALwwF8r+unufH3KBeuSb+skq/YweVUgM0dCNiAxPvbooS0MtZ2XRwuJD0riCida8foft86Qi68M8oyNCW60zZQ6gf3xxpTtHXIrx8KAeLcOCDFo/rljjnrAlpr23vacGjGkzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPSjUYIV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPSjUYIV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69D1C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774674893;
	bh=bze8Yn0GwjNuFqAL33eCvEhTCWDmOmg3JDYAZoksUik=;
	h=To:Subject:From:Date:From;
	b=cPSjUYIVJTjWx2uOfZtfya61lnQrZD5tvg9gW+eRPaP7UXNAJpMjLb9WjnnQ5oMdT
	 RzPwnd9G9I2zX1anr9ZSZz+tgqI1WndQCxhe3Cic2PNIdgibRe1ek1DNDgs2r8Fw1z
	 5RcZdbcRhpJlGvRzsjUfCXeNi0+TXwESewRkE18H5Q7OdEmzjm8O+KCC+PMB6pQHNF
	 W5iZ+pOdQmbdG74QgN+OwDacKuMs2+quYtAqvanQtRUNn91ahzByYQ5YlsS6kAGWIm
	 1feMLpl03uIylsSBNxbumoNE9XR/xCHCGAsMXm+2xPgwZeFEHIxL3EgHvRSQapLPHW
	 Vf7EMiEZqO68Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9251310F3DCA
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177467489358.30562.10408026902769597876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1a151a76f32b54da667f1a0bff6ea1725c032c996fcb68401168b8b945d6fb
Date: Sat, 28 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774674893
