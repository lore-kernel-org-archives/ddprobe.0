Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3232417B418
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747508994; cv=none; b=Yu5kr0KZW9b+Cd6unZByYDGbXej4x4JY4gn+IVJJZjEyBN8U2igF2AojexU1IX3UXPmsuArXkJX4fJv01vgdRg1vRC7Jrrdo4cqalyvk7r/m2xEShb9ceJV2gO4g6fRJv6qqNhJsdbvKmmAc5Xi1x0TMp5hfZWxXqs04cmNi/Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747508994; c=relaxed/simple;
	bh=/7dHrDw4zwQdlwPqZOQZo2t3myDalMI2lHzvOeqiZgw=;
	h=To:Subject:From:Message-Id:Date; b=Ntv2BaCF5rfjZtNHRvU5wfVQEv5NnOSwwM5RQDj9nI0O4y4bYUAdGQgDkCsOskp+/O4gVv0tQzqmFFWJFnfmmp7RxoGry0QKBB1/szs0kW/3hW2Uy/yPHvd73KBowce9SMIpIng4R7VwhsJNAnKLXxfXQK2NFuL2JIHA4XzkISU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXPLAQOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXPLAQOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFB1C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747508993;
	bh=/7dHrDw4zwQdlwPqZOQZo2t3myDalMI2lHzvOeqiZgw=;
	h=To:Subject:From:Date:From;
	b=qXPLAQOQg+UGP1kzKQaTDuGc5OwJw+iJyLusAOMGrksWu6cVbME51JtXk6u15iaPo
	 ifF9xC+rWNNxfCDQO8uQ2Zta1OLAQPBrmeMcrxs3pTcURgEkxYqm/9fiVm7GwYfpun
	 3azBM8POXwYOxWaxIeJ4aTxwbiEEkSTUnhUe7UxHsM0HOyvAWr79W2cDkfzyPUL4Vq
	 4Kibj5sCSONFJVBIksVv6RgE2cE+Lp7vxLuOB54jwlptJsuNoE2uAQZTYngW6tw8IN
	 5RHKBuYZKLIONiKfhrm16pRC5MyjAtVLOHy+35txo70Dc7nDT4y4K/IFkGgPJwD6Rk
	 eXC0VTWcZ8AqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D4C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174750899357.1911.5048915720985846811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 233d1327fcd0ef2faa2c0704e3e49cd77686caa93d5e52de13cfae0ca1bb315c
Date: Sat, 17 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747508993
