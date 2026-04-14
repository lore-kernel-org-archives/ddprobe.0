Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A563E5ECE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776170256; cv=none; b=XgYGbdThDhtU0m4fzVwVx+ZJIK9ZLfH0L+hbkzKcKkpCUvWIkiz/5YaDLLkEcisnqf1gPQywQCAF4Gl6QINrAInATMqOLfTD4QBMsKuSVddn1Uux3qQspazC7W+Z55r5acHI8IC4V/BRZoCv1VX6PthXAZHgWtlEgKeczPxA3Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776170256; c=relaxed/simple;
	bh=yo6JROt+BcToT7jf2pTukGw88zANDzIX35a7224+Aq4=;
	h=To:Subject:From:Message-Id:Date; b=Pa049SXy3QHST7XCvlYAli4rXmfP0+wJJs0sU3GaH+zYI9YMgnLjzL/AJUUkcLshBS9U+actgblPPTtPblQ9+eK79WGvoOWqLodEK81MqrN1nsgAq1578RUVKWF/JoLYqu41zdu9xKzNOrCyTFbbmE5dWu3xUbEC+Us+F4+zsQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5PbN3Dg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5PbN3Dg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81D1C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776170253;
	bh=yo6JROt+BcToT7jf2pTukGw88zANDzIX35a7224+Aq4=;
	h=To:Subject:From:Date:From;
	b=r5PbN3DgLwxP7zP1r8sbOJ6XeavVQCc/1TXuCUOXBWBwK/MpYPUk7a/nEBLLMsGsB
	 WCbU3UfqWWJblHD6BWTsqHKWIvtVIFDTQf46/+RWNjnLmm5Pv4QtiR6vFtyVwWXrTv
	 Ga3OAZ7e1Wje0N0+j+h/JRzbixcDbZqcIL58D84tf/dT6LTftUZ1fZnHNnTyl9OPwY
	 MXfi4HrfxOG73+dpg6Sb6dNuhzI3DG2JQ2F5O2ozC9khDDdYTskQYfgCoVnwYQV6Cz
	 GP02ZkZlHrixcYp6KjVqVoBFrec6J0oNCZ5zPQYpV56WxymA+7kn1AW/gb3EcAasPg
	 RSklfIYfOimGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A75F9D0C9
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177617025368.30993.14563643670970345825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91fbd4e7c57ed773818e295564244768b6f6987f8f264210f6be759b47a1b0e5
Date: Tue, 14 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776170253
