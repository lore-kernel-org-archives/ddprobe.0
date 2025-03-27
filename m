Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8001B6D08
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743115794; cv=none; b=NFpLdWzPHjpG7gze1JUvtpc3GXs4uOzqvHvWd/jJezgao6ZDKEX1JSByFQ8jbe3Y9W1FwpuCI/nodEmenZXP2RqLAJrl5P0JGZEmJN4tOsliuZbaEesyYPLP+0pjyNeTXrzdKKV8H+1tvN4uFjVkrB2KZdqKsNkwEMPw6PnbLxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743115794; c=relaxed/simple;
	bh=EwUqigxAgzidRsC9nBW9zat48iWnxxuTb8a8L8WwrNg=;
	h=To:Subject:From:Message-Id:Date; b=SHTl+8StzEVgFdV/u5E+jtxxUdN05Iydoe8JI2coHMBr+ig6DGN5HQFKSk0yw2/2ygAjjhnhDkAubdGFqpT9lMK1KC0aQcRLUOqLvUizKCH+zc+8a7mGOwdTF72Keq9VcC1u5DHjpfuwmHcD9aZOoH0brhbnKZtLYPzdB8tv1us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bY0SaWj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bY0SaWj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC4DC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743115793;
	bh=EwUqigxAgzidRsC9nBW9zat48iWnxxuTb8a8L8WwrNg=;
	h=To:Subject:From:Date:From;
	b=bY0SaWj2Ma5NbCAl/q9KvtlQAkMveONwwo6bALoSiuAxDriQnpo/dXMeC3Ibd+ByM
	 FjD3C6nwieVAVU0BHgn5jlXjrCRY/Drmx/fm1K3NZU2Ddgj/K2A5wBt1tHPOskEoeA
	 Bfy9/lYBOA60PufQNZlD5PCgL909m9IdUi5hW1SQfvVQkBZB1EnSmpf2BsyrSTz3Lp
	 W2yZTOqCnR60E5svos/8z8C3PmPY4XiEidiZtnV8EOZcnVtn6poCQZR5XNjX0Z17OS
	 wKFU7YwlK9Lkc858tujNN61Z17ayd+qMgx9CQf1yUaMIOLrBLaqIIAPAJiAvqVlNLI
	 KzqeqCpzB0nMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95792C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174311579360.29037.15857309562610253144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3673f388259bff8362bc758da74961a956f5f6b763a29c278299b17ef576371
Date: Thu, 27 Mar 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743115793
