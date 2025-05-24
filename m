Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1D0182D0
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748093995; cv=none; b=Gsh2arY3XoWUCoI/3idW5j33W2WkaKZPgNBOkMv3zZfu9oNGJ5tBrK4iotbYH8eNpHvpK5RlWvluuN394d1qDtNP3LIfK1hM7fWzJ8fSbhFliyFXQyfeMxUMGGD66lj8uW/9tVA5vhhQNCucxm6yNA1xm0QW95Hag/mFYXT5i3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748093995; c=relaxed/simple;
	bh=mPqLjzGmRTvPdELEeXCYyLG+DVo0vRNhT/seRtTYDYs=;
	h=To:Subject:From:Message-Id:Date; b=RFxlspF010hCr3TQMFCuer3KyHMwjjL39+BOxXwh+BaLEbZlkfTwn9KbTLqbMC4d24O5sGx96w8tsCr7FyDCvpXiMvfiWz3ifqIXn7b5yHR1eClquAZe39mdS4xpAfOxpAGy/eYNil+CLByqIpL6ZHtZQGmqnokHObQg+0x+RuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WY58AKkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WY58AKkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5448C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748093993;
	bh=mPqLjzGmRTvPdELEeXCYyLG+DVo0vRNhT/seRtTYDYs=;
	h=To:Subject:From:Date:From;
	b=WY58AKkGyOdwXet5Ng419V+Dkl2KyZMLo2a/sJTgNpgUh/SvC75J1eLgfkL4G+VEe
	 p3Q5UQ3Jr/+4NKxQdz5z16vDuus+on3DHhJ4MaELkDBbBIAvCFnIowzVzAv5wKkPuW
	 HnNlGA3LwpAMGEw61dDe+J+VMNYiq/xsYFt0wLw1+G1X9NdWjUr42VRBsFbclkNq76
	 a4tUULqCypAuNTP0BrDPE0E1XsQs7U6He8PAAAYH6PQtLniOEATp4kMtD6wbFwYge/
	 aQuRfJJlBHOQBc7Xtb4LZtv3NIsJYYOca1/+pkHlKe5O4TSvrv7iC6IluRuauiKEn+
	 My91fOrOF0KyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949E5C54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174809399358.3695.18029253516396165380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb09e516f4274d698773772e1083ede07a855102fc67ba5a7ba01f1dcb08c395
Date: Sat, 24 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748093993
