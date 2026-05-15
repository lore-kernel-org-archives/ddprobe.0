Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2767033F8A5
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778879434; cv=none; b=hK3rZsq4r7WEI7kxLntiURk2BN4AadD4g5dXRUv1L0ZjgLjCFnj+mpUlcuY25TtSIzT7Fwg3f3Hvs66EJapt01RH/qPJn46f/Rbi/MA8Ao342q3avhUiC08yuDIDySaKBu+YxV3mOCdoIusFh/+E9cqEQADfoNcpH5PwgpHi/vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778879434; c=relaxed/simple;
	bh=7u1MF690Ke+mV2d8qPEjsuaLj+Ie9gdg/zBpnk/zMYY=;
	h=To:Subject:From:Message-Id:Date; b=QM2BZQCF7Ycuedp0Bx5+j/VTd6xjsR8VKhlllndIVGgqb+fuPOVb4YWtp+9yr5wTm3lkZor8U3m5xUEVPB9UD1fYMrh7ZaqsuBCmMBwEnUd3FQabzArn57uCORSUqV3hrXuMy11cJANiE4AiHurAsPRG6xt5a98ow+IPNN+QG9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dr9dG+RV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dr9dG+RV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCC8C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778879433;
	bh=7u1MF690Ke+mV2d8qPEjsuaLj+Ie9gdg/zBpnk/zMYY=;
	h=To:Subject:From:Date:From;
	b=dr9dG+RV/9F/oi1oKKbCG8ugcUg6RDQbTd4NctCECg4ip2ga3KV7ycqThHOrPuBf9
	 I2gUKKIGSnWd0cc89ExHNqRMPF89h98o1RjOjZT0kUiYaJb9ZfSvCR4Dre+deHwqzp
	 74MUOulEF7qTSSaAUJ8UNm1HXsatwBCl/6ltM7PkL5BrARy8XLSMMzo2E9enW96rKj
	 TPGLDook5HayDVQdc6T2S2m1ww7G1atBU2BOIz4Sifgi+xwZezioyWrri2l2x+YA5G
	 1qX/Cb5YBGQl2cXneStRtIO5Tt9r+8Sdw1p/0fuf7aUgG1PUEaFdT9iveqQtqaVgDT
	 sTZ9gLCaixDBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9F5CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177887943369.2121.12601352089837189047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cff598396342a2ea4399cc86cbd5418595b0a6a949ad8200453014c973aa17b
Date: Fri, 15 May 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778879433
