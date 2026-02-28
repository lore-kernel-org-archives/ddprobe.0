Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D3328643A
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772273094; cv=none; b=RfovcBYRLlZ/nRl4l66J/5yLwInF7qOGr2xvnH8HM6z+wBt7fYKMx6rPI1MQCgCQx83ywIGLx6+Mztvhjs8MiOzlqIbPh+oLgRpo5IvCsk5Hwwrt4EvWccTxS3D3Rd8AsS7AlV3H2NKZaDqIzpUMnzASpMCWG0feV1Fraxj0D5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772273094; c=relaxed/simple;
	bh=Fl3kS0DkW/OoFn8VYRKlnT1Oa542eeqARuAd8wkA5hI=;
	h=To:Subject:From:Message-Id:Date; b=Ee1AccYbRNRnWPL+r9KZHvhp34wPMPkGh3AXypuVcIPicYWFzdEQzBXqre1Z0e5E7BOqTADcjB+ANJ6SQbabVv7Z4EfNygofVkcjl4NcP5RtI8i6gl0GZaRzPg40YyWglcYsQwxEV24Af9l8Xa4+hlJaAyQTbaZIg2mbnFGE8GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOkdAa3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOkdAa3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F70FC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772273093;
	bh=Fl3kS0DkW/OoFn8VYRKlnT1Oa542eeqARuAd8wkA5hI=;
	h=To:Subject:From:Date:From;
	b=LOkdAa3O69Aor0w5IYvCfaZ57D7iReXD1VA0f582ZAEeTtH++3R7rTjnMm8JJwJ1q
	 aFxNwgxlHYTQXCJssxYyjvJfIl95uKL/LnP5vwf26fQOfH5MO7p8vR3UyQI5G5T0JI
	 eUUpClz/06Tnd8QeixwNFryoqmh+Br50MAKlNw49JfEJ3gOCHgtgTh6wpzAVjHL/fp
	 13Zekzbf/ZBCI3Nl/leG00gPYo7pYrJQS1zD+g/vmr0VMYv76g36Uhg33pMMEeXLoR
	 iQRM9BAOfX0cvfoAmw0wngF+1XE5Gu7k/TGsVUFjJKFdtEEieei72jE48mx6+mIZd/
	 /iE7FbCwv0R0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBC5FEE4E8
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177227309358.19164.983345362552726831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 178a7bcb38a35714010d4c447874bdde42598c444305344cf3d65058a3f0d689
Date: Sat, 28 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772273093
