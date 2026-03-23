Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1831331C567
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774304694; cv=none; b=Qkz/rEHKtWUk5isoYUgWXUewJcGObjO2GBx3GD7lesP2jmaKX+3Azr9KHvfIKSKcUmX5X0X16JJ5BuC1OsG4Fp6G8uyWlgj3wC6C7RZFJ2x8lbIABwSAuXO+jGQfhd3iRJgqkhXPzwMa7l77ukdRiJXOzXAVTqc8IguqAeUpLHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774304694; c=relaxed/simple;
	bh=9zbuW04SfqDdSo03AGNQ2PO9QgDZOkYECGD8jXkdlEk=;
	h=To:Subject:From:Message-Id:Date; b=k0ycolCFORZL+Bsj7yKA1DsinmcFSZKBPfzGSrn5ZftwS8I+YQg2dhUABHpPCfudJY8dDyov3hkP2I0jui0aQNmBZ115jPr1vJTfgplVch0QEG30yJzQdOZxwkfTszpWimwUTjx4ZDOmNejGfzYt7MP/E54EyX3ULmlSXAtkB18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTJoeD+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTJoeD+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6284C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774304693;
	bh=9zbuW04SfqDdSo03AGNQ2PO9QgDZOkYECGD8jXkdlEk=;
	h=To:Subject:From:Date:From;
	b=jTJoeD+GO/9qiKW9gTgas5WHmbRhf8FpTZBzLDbVtiOfgfDAWMJ4hrF6BBpAOaKtg
	 jAo7Ixyv5Y0YkDTUBm2uQ+9WzYHtxonq4EmEIDdf8kTBR4ia2NxqHAIMj2PNM/X8so
	 kGUc3Q4+d/miGjGJ20aKesk+YLVvVya2bX6adJld3/yFLD/Am/A3T4NK7x0IVBOjJ/
	 DFv5kqiR7anoRkjnuoIKhqCLuK9TOmichwSxrBLeJODDPd1uW4fzQo8Elwu/3VosWI
	 B+ZbHrkrRoSIBmYaXvH2xVVur62azFkd/nNPTOemrhoMI2AJhMPxQskqh01xfnGF6f
	 rZ03WZbrHFEzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B0AD58CBF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177430469365.28237.12641494692257520787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b15cef3441652fa181f225ddf057b391a1061d5b22bc27710bdf18ae8d2c4a
Date: Mon, 23 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774304693
