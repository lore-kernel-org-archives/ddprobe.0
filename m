Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAAEA937
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748912994; cv=none; b=C9p8tJFcNuPezFHuL2/A1+C4+jI+RMFABhv/w84wHSom93xmA/mNuJnVX5vgjtUBNtBjjz9c9smUKkwpD/i7akhsfHfD9xKtF1FImp2Cu3q7s7X90/iTfK7oog2AIrRiguDbqX4mMhJyoveaoiNmofZMzE08YDXzyPaM6sr9aP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748912994; c=relaxed/simple;
	bh=sLkTeY5zf9Mwsyoa+aqoYJymfLhk9GUt7L9/Wu5zggc=;
	h=To:Subject:From:Message-Id:Date; b=J/IuaAafeQ0NLxX13kmeagKO2WuCM+LZez2ga9d9ja0cRGOfmprQ3SFEPXU0vi9zQsU4SocPltSTvVOiUTKWuDQa/wwm5k+gfan6LrslIv3nUKNbiYMooIuCKbS90OQUh3OrFsYVIoXg2lEBfSq1dCpl+tqqVU9lpD3Uxa7CLEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+5Ei+fQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+5Ei+fQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E44C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748912993;
	bh=sLkTeY5zf9Mwsyoa+aqoYJymfLhk9GUt7L9/Wu5zggc=;
	h=To:Subject:From:Date:From;
	b=O+5Ei+fQSikpdEgT+W9pU4ofcuWkzXvGsUDNXz8QNAGsRk/gsnWBomCRLppnLMHjU
	 mJdTLWKt2yCh9DiJbS7RR4SdSotU8DUwOlNDQJ/4gBT5z6QZbTkCUKf6h5np7ejyO+
	 61EusQ/n9O9wRVltAEO9lqpSB4JZMdMRO3CZ+h967BlYSoDmOIpaAoZkbYdjHpSd57
	 nVS/KeUHI914MA2jC6c1rTqF27vyH6eXf650G4nBkUzxYp1wAUknJLrMVU5IvjJSVp
	 oSbWRPxdBoisn2RLhVYk+CIfrXwy2fUiiPnn8WLIMAbKxSJo9+QXV7nOPCzyTZccvg
	 wt30rozAjWo/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9465CC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174891299357.22666.17762062242829239974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da46f7696e74657da54598ee4690eae1b9db0e3a344b4712154e1d2ea69b1a9d
Date: Tue, 03 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748912993
