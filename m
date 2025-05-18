Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE09A927
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747538394; cv=none; b=u/3/mRJpVscMMT9Y7vNfJh/cVNHIhv7rRybU8BjVuQCpwVyiMt+aafkCk9GHQYTD1zjQYLta8dEN965zXDp59X37SD3NKM53m/mlYWVmvOyqeV1gs8VRAeIJTCke8Q/x7WfHnpHTGely+G9exSIBo5hWYCEfEnc6nA0FwiDM4Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747538394; c=relaxed/simple;
	bh=+5jsSIOjf32x7aVVXIYf0kHiDVwsK8rg4WbnJsqBIPk=;
	h=To:Subject:From:Message-Id:Date; b=CD5Nzjpl5YJEibM5S4e65t/6cl7ZzzlHBTG96JMHwLJTg6cGsr5uztOo6Tv1Xueca1hgEaaD8Yb4G3CdoLZNGHCJ2JUij/2JH3lo4Du8zhu/VTDnXCrBniE+LM93Ud06KkcUo2AYSv5nh0+Z4LlsIaiR3XHZAzaLkXNWW25jfrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+RNE1LM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+RNE1LM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79A0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747538393;
	bh=+5jsSIOjf32x7aVVXIYf0kHiDVwsK8rg4WbnJsqBIPk=;
	h=To:Subject:From:Date:From;
	b=q+RNE1LMuVJa/A4XtkpL7xsETsJK2C2Fdj9fPIHlLd8HIEhp31dFEh1/i/Sy94twA
	 FLh6RhJq4cfyTWvF6qVe+cAH7T7emWJ5NtRAXIReVNnbqOEEj7ChPoIgl/sWsejmXf
	 Mcv9/SEibI5MF/fmZ0JCVcW4ES7HPhLq85ogRxCb2muRCbXFNYK5UFAMWom+i+7dqg
	 IzrmG58cfCpSJbascoUhQRmOZ+fWGmUTUgckE7Brn2FX5HDDFEH+Ch2aepxLPPpWgD
	 JMoWewCk7LAY4jTFJZkr81KWgcgyqNvweWSWGqhLaYQ57rAV265AnlQRq3sLPOR8zQ
	 7ZPCZM8ZanttQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942E8C2D0CD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174753839357.7517.14965160780688717145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3feea4c82904f249cc9c35bed1b4483f7d10648e6294d4ce46786ba2384d6def
Date: Sun, 18 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747538393
