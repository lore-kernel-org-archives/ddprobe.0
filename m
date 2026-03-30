Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9EE3CCA1B
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774874094; cv=none; b=BJtkVnUCHCWBab5eBleILg9kBaGlezeAE6wYIoMud/v+Z+Wgu3R9HbHPw9QQ7wmi/mTI98c6woM3OqCxlWaeGYIu77eXsP/OGVQtAyasqsVQL+18iDXeE2NPirbgrKuPSbNyYp6XDc3PBzZ7h0gzgi7oWoGq0+hVl3lPZyBiLJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774874094; c=relaxed/simple;
	bh=us0UM+lEir5bOdlyDY8UUbQMeLZqEEXMDLZcqLQTpZg=;
	h=To:Subject:From:Message-Id:Date; b=Uzjp+H+o1U4wXtIu3KRRSmC+cvEnFcq3n/mR7o4bbeQdnsQXnH3a7Clk9bPrQs5AqV4dOGMcoSvAWsHpPq/cmmSbGINCc6I4b3VKWSV7lmrf8HqdddLbKtWgX7sk7A0Rk/BySji6JZF/d648jT3zcReybxFtj3vBOPAtlSxtDk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOab/UhV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOab/UhV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12ECC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774874093;
	bh=us0UM+lEir5bOdlyDY8UUbQMeLZqEEXMDLZcqLQTpZg=;
	h=To:Subject:From:Date:From;
	b=aOab/UhVWVatZgbVFV/aKqbhFD0vnqaEJI2dDAJlAL4tutVnm3bKQxgCxJGPMoXYE
	 BnKGUMWLJJ/nhc9C251Xvmt4OK2w9yCD6L5sAOmWLjer5zxcGS9Gzg+Hea3cAv1Ami
	 5uT0ZhX94EC5aWp1il/fUOCsiq0yvUceEtt95fjwxs+6PnSrLSxjOb04RKmaSBCO4j
	 M3n5ZztINdTJgvrpziU9mnLzumh9dT67OF4jM1yLb9GZtwgWu5tkaIYPdpLbFfiGvV
	 tjfF7s5+jzswcIVqDMkfObC1V9vZJ5AZwdvz+Qe+JNQbIssZBifU1JqrkiX7zy51rd
	 HIyvcTpyXR2YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F9DFF494F
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177487409358.29477.9146928395263607928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d177c4734dfe82ed7aa4e50153018e13c199a0a68bb1fa5831796b919c70d09d
Date: Mon, 30 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774874093
