Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC3E39EF12
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779173435; cv=none; b=mB0lqqBxiQdIkj25wW05Iq/18IiU6EPTUc0tc76vM3wIbkX0OCzS3qFbr/wFqIiHCF7XXYS4czJyvNmhP5aKrgqZc0qoJ3vDrF5XSsNCVMvjOQuDiCnAvOtI7kQ4IPsJl65TYtoq+vi2iaiS3p/HwfXZa7As1/nUrcrZ01tKN3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779173435; c=relaxed/simple;
	bh=RcH3grTVe2T6BsCZzkOUYOMAApLfjN9SnIv2hsgi+s4=;
	h=To:Subject:From:Message-Id:Date; b=noWczaNe7BHgSe7XX9kLDIT4w/9U+ZWZYCOBo4xrSjxF4YQ8NwxNuXKZWZ4ZxiIJViJ/ZEAockTIe6T5WpwA05ruNWjGTaGPpPvIbFXwFEjuDk0YKsrJUMSFdxTXp1w6QmFhvQJMqvdlCFOZZVwjrjr7Ucuylqv5+d8NGzGuSFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiu2GCb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiu2GCb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 31734C4AF0E
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779173434;
	bh=RcH3grTVe2T6BsCZzkOUYOMAApLfjN9SnIv2hsgi+s4=;
	h=To:Subject:From:Date:From;
	b=tiu2GCb2n7EIsAObaLFPLuoCPkZdkXSXBaPcbyB7CmvLqUjsYN756Ae7+ccmvBLmx
	 p7xFKhy9Y+ONPOX4uCPBoiccFjLqUEk+jBhidvGgKD33bQ2cO3q1Tby1FNDVXmulPZ
	 4q+1srFsgcKwDrknbL842xpZfyjlivw05elO2yZQQUJSvpDmo38ve/gka+kCJsrot7
	 5iyVECTeX2tg/2T6v7r2d/HVOEDCA0ZDhep1rCWLzzj+dEtLcqu5qLdmLO+p1tvcHZ
	 SXCV2ujiVs19j5a5jdXN7DaCRIRaZc1yYbzYV48kyEW+uWZYuepXWbeMeJrw5dlqqw
	 Xj4JyIbk+J9Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF74CCD4F54
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177917343370.27492.10212662119757674119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d489df48ae7fc238c6991e207c78b88742799476e799133cd32108ee3de31c
Date: Tue, 19 May 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779173433
