Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E738D3BB27
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712437097; cv=none; b=hN0PaKMw4XTelWFd9AYKtsOWD+GlPYKQ2uxeuPuPPRDZkJ6l/CujJC4wqKN6irsKn0wfMzKBAwk0b5tJK2ynFXppZSU5mdSJWTOtkQBjn7+bS6oGFjpLFRVlcGOuc72YAgkuIpe703QXrPmlrAbF+tF4tOoB2qe3DndJX54DP5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712437097; c=relaxed/simple;
	bh=22wAJHZHXRPl2O0nJATyYNagIJzMamj/H0hBISQvdlk=;
	h=To:Subject:From:Message-Id:Date; b=azfAUx/OQQq73K/JMfJF5RZ9OfOu+BmufSoO00xGakOALwmjQVizPT0xrlJOo3Gu4IV5haKvVMZc+/ODXrOEunytnRVVES5Xk0i+lZejLREpL0Sv9nl3lOwuhKMCOgipd3O+YFDixenNVNq5xaZ9gquC8wafHZJag8PMXMhfRDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ziq2qIWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ziq2qIWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 781DDC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712437096;
	bh=22wAJHZHXRPl2O0nJATyYNagIJzMamj/H0hBISQvdlk=;
	h=To:Subject:From:Date:From;
	b=Ziq2qIWVp0L6ePetXtnOfSghIdp2RoyyZiHuVHw4jo+JtdrhKLxURMJwpW+FBzM0J
	 zgiCaFahJbb8FDqGnrcqM+Z1NAeFjBV0XovnvvWvBR/LC7Q+EXwL6s2rkAIZsKRVSh
	 eNFWJ/LeynDbGfAb1cZpVOii412LTGA11fkg6H4i+kXuZEIObGxyGNMy8lpEw8DpXa
	 /1h7baCfQIJ/BP/2PxcHiCRUAcVxuaaJCnG9hRPZ6U8nWN1VD9qV+5gxfCV6gGqpJk
	 sZvIekwbqeSHxJvPdsKFJWCQwd28/PSB3bPiDoQzz/FfkN0Q9Ju9MHHoCkVNQ/pucO
	 tDHy9Qryp2Ehg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68CE3C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171243709639.8221.10485561459570474709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058650710e9767eaff1be79a5811d53b2eeb3fdfa26a8f46601ac3f2dbd21a8f
Date: Sat, 06 Apr 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712437096
