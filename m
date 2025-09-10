Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280061CAA79
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757488794; cv=none; b=Jq6xR0N/qNAQrwDd8iieyPjmhPHdNQ7f74lzqaJjXgeoZjO6nxf8WqsP2sbAQYY22Tjrqe7bQ1ORnePbVB5HmdPa9QcCb/6h8rwGI62zYJ0G9wewAgVbs48AU9cfRmkoYu/FAjKFBJ6WmUcsx3urnq8hhgflIs0j1bBbuDVZR4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757488794; c=relaxed/simple;
	bh=h15y6UPRd+Mt+vDNJIbGbLkkVvRIOmfjnRxRFnXZPPo=;
	h=To:Subject:From:Message-Id:Date; b=NL/QMGC+2FBsq2LbJj7Vgr0Im5f1smJXmB0DqvYfg7frL0RHt4/qdANkcz5VChQIYxNjffgPPThOvTQFxIfenNF81NXmvpKGAHJ64A746827H9oNjUmA+sSs6LzFIzQ/8+BVf3UjDdLCfaaAowq57eGLm84fVWpAi1Ej9PV/VUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5Mgkik4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5Mgkik4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37DEC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757488793;
	bh=h15y6UPRd+Mt+vDNJIbGbLkkVvRIOmfjnRxRFnXZPPo=;
	h=To:Subject:From:Date:From;
	b=M5Mgkik4l8KIxafSfRCMqmjv1CsqT4Q4tOZX3U/5U3WIb7YTRC5fRWqcWTZIB2f5x
	 F/7nk9Q4eYGLZRT29YGOm3pYBZKVNBShGMUVwtrHy3AZldTVeBaS+9ZJUhIU8oNKGq
	 mjeT1Meq6zucWR9hiangN68pjoxSN8qy/J8gP3KgfhGXxJjTiEWdWilyytRQqS68Vo
	 G9KVOavM1yPqF8CpYt6p1IeNrjNvXHLucRz+Ntf5TcOL9yO+XWf9iMpIPP03oCb8EV
	 46iQXb8/uH/wsysNN6KoYdDhkQZJswQZ17An4sPJPpCHzDQ/jxD8QX1Jp0U2nvKI0m
	 J+88jd/+KrTRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A55CAC58C
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175748879357.29073.12201296316894370470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea04349d4d0a1667749a7bbb35b385bf074ce08c2eaf655cdf0f567763054231
Date: Wed, 10 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757488793
