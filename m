Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4860E13E8AF
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717790843; cv=none; b=btAXmEa8g0GkBFiz9C4NV+3YP48MjpSvpHBB35vB0Url8H9DrTuKq5xRoL6JAAXdseXSgThTBW/GxO6X5QlENWPNoDWwW9P8Z1a60frBiRFmO4jlkrx/eX07J5ysft1X1vGOnGEHBOySBgKqn4Z5DsbFb+ThP2vicl2D3VtJc4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717790843; c=relaxed/simple;
	bh=QRPecDf0XnkbmWDmhLxBUXKdyGGiB5K6zddUZ8SJID8=;
	h=To:Subject:From:Message-Id:Date; b=sUG/aNKFYBXHrW8zh7v1kSVT2YQ7A6Gm73jGBwLB33Jw0RR/TC9oEAh6M4CvUocW7HCkaYTRDlqiF9OQOHKiuAaqtGcrZ0Do06F2cZrmvwyQLzgIRBMmf1rK+P59DN4GPnD2/V4VF15i1VmFtS3CB/vczxTXJ60AqF41ycfQaYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZIXALP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZIXALP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1418C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717790842;
	bh=QRPecDf0XnkbmWDmhLxBUXKdyGGiB5K6zddUZ8SJID8=;
	h=To:Subject:From:Date:From;
	b=EZIXALP6cK4sFaGZWst51B/1Fh82sPtt13kKajOHXEJOHFZn0YFMNggHqXh9hLNh8
	 SbY2GM7Z8/m6rOR6iGYJnYzNQXjg9OSzHricnw5bJFFXWcgr9xMDLaIrAUEolaiI69
	 PFMc6rpAQVbfu2/utyKlCg91tkJyIODbXwDLY9rPpB3zjHENPhW/r8kIohAOAMJiXY
	 QLuY9Ry7TFPJszgbWfRKzalJ/hQu7LDYws4PUCfv9zm9Jlfg5IOPs+hRL1dkQ8sDye
	 R0/vBqDl95rfUF/iutFp+Q8gUTxBaNGX6kmZxkMthki+mZkf6R+ljF33eaW5Xk0r0q
	 FKs7hdVA44e4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09B3C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 20:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171779084277.15036.15624676374672568829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b688731942d86843b2a37eafbd5037a85a201374347e9bea0fc673fc4d22df4a
Date: Fri, 07 Jun 2024 20:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717790842
