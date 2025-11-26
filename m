Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFAF2C21C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764148374; cv=none; b=kwwyqfJEhhTr9zYME0mzSYbfTMLbfP9tr46CaEXMY+UHALn+70BsjcPcDeBkoCsX+gH7uY0lFVKvlRAuiHkFMOVVZGdVG7UbXY7cHDNp2KV+FSuDQoPo61PwhHmom70AoY/W6pJOHSYi8fWhIgDDyPIkoH81ksyrzQp5KmDQPv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764148374; c=relaxed/simple;
	bh=dLEFAkXgH0PX31+6GNqU0P+z1dls15VCxTjchsPNRzw=;
	h=To:Subject:From:Message-Id:Date; b=nO3CsaAom7HBUq6b81xb2+UpNWv/S9hIKsdAJF+mQsv3kH4g0iUcnfUM/v7C6In94O4Pg8H5WGFD24qL5nJrSIFhmv18hygyG+xolRbxoIxNGMtM5B14TsHMsxt+n6xWsuuDwwhaXnmEvEbaYLQ+G40QhBP6aKcfz9t34LnndDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfwMd+78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfwMd+78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74CEC116D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764148373;
	bh=dLEFAkXgH0PX31+6GNqU0P+z1dls15VCxTjchsPNRzw=;
	h=To:Subject:From:Date:From;
	b=hfwMd+78mIWWuqHNrE6lgO9dU/lgGXbZw+c0qlmS0mKe7Wxs49va+4SIZLTdFsGZD
	 18D1NXphWuB1EsI6eFVgJR83wJIwNQJeqJ2CrOmyNNs74ULHZqMowd/h4Lq+q/LQm5
	 HfNLt08UqmEc/XQanVVA1LmznELe+4lVpx5tdNwB8fYfs2BFFigZNRE4Fy4/p0tHyf
	 yFXRF3X62edydx5CiNHJwWm7qJM0ki6POVB6vRer2ndOAxu//VcME+Yf0dZhFyvAR/
	 Ns+H4JOVl7c/NZwqILOy31Mgk3eTjOp8eFAIfISN80gDvV3mprXSkKZpuGzAJajCt/
	 LHuDH0TIiErQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F45D10390
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 09:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176414837359.8893.8786528555967783141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc4b355fcf74688dd149787e669458520a9f382084bdc15fb6aa63ee33ebaad
Date: Wed, 26 Nov 2025 09:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764148373
