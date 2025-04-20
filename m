Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB8D64A8F
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745135994; cv=none; b=k9UUhFMN/c3daMSdc8uGTuj2ugMPtCVBn9O3KzDPyOt9B8jeYRcflUY+eLU9RB1YQqjAh9S2dY/XCy8WUcZNiWxD9BzWVgPphxWyMT4aWdeqzXLV+V/C7imi1Lq2Mt3d+GuMZDBdKjXAO3/BU/V43V4hLwm6or71/FZ/7P9WIiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745135994; c=relaxed/simple;
	bh=+SlEt0du28Mie3OgeQ8uAL68HGyEKYMr0uyEvz10iIA=;
	h=To:Subject:From:Message-Id:Date; b=eBhv1fXQZ8hFJD78Oh+S7fYcaUbI51CQvDaeRGuQtbGMu9nFXtUl9e9wFybp/5Jgu0mKySvDLkWVSbyeN0iGlgWXO8rdhA3WVIB+R0DhaIMSANApUilcFG+vgWhB+21cpMSyid5NfH/yCjzAsr15aEwIGELHnZaNfizdSSsETjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQkEtXxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQkEtXxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A4DC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745135993;
	bh=+SlEt0du28Mie3OgeQ8uAL68HGyEKYMr0uyEvz10iIA=;
	h=To:Subject:From:Date:From;
	b=bQkEtXxbkaoAMr/w5gmGfopdCyFpqbhNsGzdYQk2pD8ainYGGCxFZ1QxT76dfR4B7
	 kAFC3zMsDjP+b/38NmtpUEprjNwWVQdGDrc5+hDKU4elzDnSyojxymoGVqcCTOeLUL
	 xzOANSr67syCZTQek+WFhDdeEGPRkA81ujH9dbPghyxBzmIOsHelIsIMhkrBMLvVgg
	 47nh7tXeibqN4w5kKmNdPG1LwXLF5TN5zOfBYQzx/YJklc2JSYadq80qWBEdh6rUKY
	 IAL34KXZKZBOtiT0g0YDH/uPu9xe8MsgKDXn5WoMdbNfLHa7sWPzl1ywmTgXBpETR0
	 hUE3PqpeVU9dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A71C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174513599360.12723.18369971871494623440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f34b8ee2ca505e7ccd89cf18ff5fdcf679a6dd23e39bbfceabb19c518b0cd3
Date: Sun, 20 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745135993
