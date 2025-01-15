Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C918178289
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736961353; cv=none; b=dFIgb+/5UlrXjSbmrpvJItsi8g+LB7hrECEhvW9Z4YdPj2SldKUSEAEgCUfwbt3XTYLLPehoR6N8tIJpElsKP1SsoeosV8AiUBAnSGSgcBHHBHNY0yhzDDFUj5J5adEYfbjCxymFYN/INSCAowBFCCeibSLfnxr1hgWRceKrwlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736961353; c=relaxed/simple;
	bh=2Yt9RPQMh64RH1X8JmeguNLjeU6Ja2C2mHXkUJ5AlAw=;
	h=To:Subject:From:Message-Id:Date; b=CoEe313M1vwvRGGlyEPK5tB39m24XQA5xtjWrbCm+Bj4kr6mH3irxuGKZ0oClgT2LQ/t+R9M+BcQLyn2GPMip2V0J1meG9rrp2SfH2az2kza9opdOrYQbGTyW7h63VUaxftYjQcGF/SYBLNGXzS6E6Uh3Zmrg63+lisZ7LqnaYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u//kB6+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u//kB6+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85E4C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736961353;
	bh=2Yt9RPQMh64RH1X8JmeguNLjeU6Ja2C2mHXkUJ5AlAw=;
	h=To:Subject:From:Date:From;
	b=u//kB6+s4lIxe1n5DHLR7MlA7c+uTeS2csX+Ro3gxh5AtGBr23ItTjdG9L0I4X17U
	 GBWMngOPilHG6Gm97j9S7TQSykBqSGiBV/sQGrD/eXsf2ttJUnofGWE2QxMySG/BKr
	 Gso8ER6V3ld27+1rmYM6ZOL2aGTQgnLQdP8byYOJB6RzM1EdYJSnaHIcD3ppeAFiQh
	 q0V6trPwVBxhr2GZCyqkCu/c2fq8U3AEMBSrpkYesu+oyWj6jBuPkRkbrH8UDLEHUq
	 yC+ulWrygVVoHgECEVzJzvxBrOxqnaYPjwhfEeZ4yETuwn/bfGPH0m1llKdCiAkEUA
	 Q1WFa9T+ia7lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97851C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173696135359.15376.17669788524410680667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b352b5cfe7e243de754587a01d8227fa4f6f0c0d29aeda14127006c551343684
Date: Wed, 15 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736961353
