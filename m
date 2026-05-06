Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380973D0922
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778107654; cv=none; b=c2ekK5KKQ6ZKw11jrQ+2Odj5vFR9UevQM+yPfrnSygxcFTkhBvj8Es/EIWWEH5P5ukaHbdn+Iy0mskftBOrFDxk6oAMJ9ZEGumGIX9uuYzcJWSPNuDZ6uNeD8ZwHlsSsCC5muD3cAYWl6UNCU180Je3VdheuHhWWy7yuXO8k3K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778107654; c=relaxed/simple;
	bh=Yl/fCmyB8OI5ByqC/tuBKQi+mXYKp+vrQFDvHqFaU50=;
	h=To:Subject:From:Message-Id:Date; b=hY/ouPsLMcU8cA4IhJZJ9MepowAbVw8fzTA9fSaW3tC+ghYIQ8Rq020SW9PsmEmzHFvFA3Ejtkj5qYuL8nX1v5t/We5HdZfte8ga70P/0WhlH2HPCdTaqwD+iDJ85CW3BmZCAuzXoDpW2Yd6/iMqjvbKG9kBpKab3Pg8SEumsL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQaAsXud; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQaAsXud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31D2C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778107653;
	bh=Yl/fCmyB8OI5ByqC/tuBKQi+mXYKp+vrQFDvHqFaU50=;
	h=To:Subject:From:Date:From;
	b=iQaAsXudSI6FrYkkMLSRytw+/aqp8gC6M1i7cSfyA3ddBB7lRNMqG4XgosJgcd6x2
	 HHIEYYITnrdEF0GD5RAAWj0TmrOMoEkLhGqRkh79A+RgWFl/s3tniWle5qRXJ7ginE
	 0xzC+YN0o/ONEF2snPqyaTrHhD7cX59YalvgHgU8jGLfvUPfI/l/DWRv0A/fSfe0uO
	 n+8W2OqbZnjseygG5/+R4uaT6RLBmJyS8tP5S/3ENr/VOdTLQMxl3QGw2cfRNVrMr5
	 AQYXNudWCP2KIXd7RjvBYwwcMRV0isEhKHtxFfYBc/f+k1qHg3w/FxqJ6PX1NajOap
	 yFfgaRzRYNjsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0B7CD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177810765368.9797.14099610281815322173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e4134c503fcb9853232682a95948891969167d7265fa454217e4511127075a
Date: Wed, 06 May 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778107653
