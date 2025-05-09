Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE04F507
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746761994; cv=none; b=MTEUWiw+27RipcEtTmSFFEE2M6JxgE7lDgp/ccqU4XgGa+uZz68jLUKcGHcLuxl5vGaEmOlddglhG/W9HHP7IVlo6xGj0bqlAij+m7Cu6X/iDMpAv5FtWGRuaIYydr0SwzROMo4jb7wBIU+FocitE7pbU8ZcxCYiAjQaIAHIU2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746761994; c=relaxed/simple;
	bh=wrdybCG5VIGX6F4f/lLufRH1zVVoxZ4qrsz1JYjZ+L8=;
	h=To:Subject:From:Message-Id:Date; b=GOxpZJcnoHaun9aIX+wbgIgxi5ZPpQj9ChdKAdkzL59S0r1+jvDzLJFxSUONtC8j+iw0A/ijk22VnQzDG/Sv6CZ5rs3uxbiTDzobeYEcI26WhJIWflALYSGiiJW4HBrQoTyI61puox1NQGo5HlLE7qsBq81Gjv8aXa/8yqF6YCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QiL/E/4k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QiL/E/4k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3530C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746761993;
	bh=wrdybCG5VIGX6F4f/lLufRH1zVVoxZ4qrsz1JYjZ+L8=;
	h=To:Subject:From:Date:From;
	b=QiL/E/4kxZPwUNk35IgIkopqNKuV9Wuj0/IG++91/K3MWmFjYVaY1lM6fXU09pEGL
	 ioNS2u321ZjFpr6J8oA7/tWE9gxPHQnY/iNWVd6UWumjJiftcMYFG9GXKAv5kSeLkU
	 anYqv7W216GFfBvqb2act4WPhmPWnGNgGj+S+7gH+LdJ7GFG/YtAa51f23XBkSUkoF
	 X8D3qPNGaBV8EWii0WZjJYPX8+slU9uqbjMMH76t2sWXtt40pJ6C1/F4ogBkf2Omil
	 NcD+aUDmiGxCSlJ/1AlrT6XIW5pOFgzFMku/H8PQTCgWcB6PQ/aqmRCwWAA+F1jVSL
	 9a+O1c2oOCgqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB26C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174676199357.20205.7449324799836285483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96992f192ef76b3c0817a582a22633a58507c152f65732323013aca395673b78
Date: Fri, 09 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746761993
