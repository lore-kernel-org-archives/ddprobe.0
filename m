Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB9F30DD24
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766594634; cv=none; b=L178+L8r8ce0p+YrhlB2/L+GEDBNAr+fhxc2pg3vZ6uTLbnRsXL5jgX3BXJ2hDv0AR2nGcI+/Zp83FinWgELgCbIGbYduOzs0mrSsSsk4PRkUg9CwhOXFhqOnN7p4B6aJkaHyI6hvYm07YMYXux6sXW1xLfKj+QFmvYG3I2ZAlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766594634; c=relaxed/simple;
	bh=7QnSSvEuqTzQ7Qv/+GsDeNqh08n5sB60XpCaMO5tElI=;
	h=To:Subject:From:Message-Id:Date; b=Vjf9fgtLqp4gujjyXWiCDWpGOv0gXZ70vjais17g95xb3tuukZ7XIKEHPo4RnrdlUm1cNlyrsukg42pZds2/Gf7paqTy0QgePBcdKZhqMGfD8kgwoQTwGWVgmliw2XQVq8eGRVBcY0oXHKO/uuhZRdfGRhDQ7Poxup3q6ia+qOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uP48YqPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uP48YqPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F92C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766594633;
	bh=7QnSSvEuqTzQ7Qv/+GsDeNqh08n5sB60XpCaMO5tElI=;
	h=To:Subject:From:Date:From;
	b=uP48YqPGI+nNLMqv27Lv0pUj8WovAict5iow5pVvq27IubXwFsGVmSJ1Hx+sj1CVz
	 N8yYsRaWW93den27xZqo61TFjff2MIO9QjsFjKZG5HpwJ+ggerOOTW+7LD7pNNk+mN
	 pwBxYFNBoYNLV4X1mPmydRGi+lLiQ7w+JbmQg8aQkUteZtDGNLt3p7G6+fqBtLcZrt
	 fsijAP1Qp/YSQ8Kf+s/I+8q6UArNh3u1HgaVDOsqK6wyBKIIRWy/QZnrwDjd/kWJeW
	 0QhLfTsa/rmsQn6jw4yvMdh79blDBEiBCI0eZZ2XHZ5YIeQc0E623Wt8/dWdmGdJsf
	 2fES691zV7wsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE4E776EA
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176659463358.2436.1590475748318345927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 756afb37b170d4217d2b7d0757476e742de284531b42bb640b341e859b36ac26
Date: Wed, 24 Dec 2025 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766594633
