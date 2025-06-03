Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407DF25392B
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748995194; cv=none; b=X8IIisF5PKK0xf7TXmRwPQqutDe1UUwBaCm8n45YGARkAvlDIyGgeH7/W4PXhXr63U8Mkki2HALy8JEAdhziaZbKyLjLpfnjtWiRuTGOHro01690Jyx1bLbdnbIQqEJDDtsGvCJc73n9Iu7r9d4kA5hxwx+PbS4rldQS7eIEeYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748995194; c=relaxed/simple;
	bh=0MSaCMw40H2vMQdVx9jFd0f3q8YWBH17tliWRSE++vo=;
	h=To:Subject:From:Message-Id:Date; b=NDXbq6NqcdRfzY3VvF1wG+YV4HslQpOPo7K+9lUCxo28o2KvTVGKobLhTwoD64Xm5yR8WD0Xcx9HMb8Fu9WSZJB1XlXqd3dWGVEIn4TGZcqQxL7rNm9Y6SQ5pvClI4+ZOqJfNDBCsBj6Au72Igaq7I3+pu3tfoAU4CNFzQt2184=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cL13Kk1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cL13Kk1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57B7C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748995193;
	bh=0MSaCMw40H2vMQdVx9jFd0f3q8YWBH17tliWRSE++vo=;
	h=To:Subject:From:Date:From;
	b=cL13Kk1d8MMC7qmq0mSdYif5MSpO3SAbWXumIKiBWb7tDcriRD/D5le9eefHjwJKj
	 2/MsxXJmO9z2N48sc2OkwzVivuWq0SshNCS9dj+XV+YnEVb5R/myU6XD/b65v/ESu0
	 vkT6FhlFjlJ3VjK1wfsjNWDwB5gyVitHUSnIc+Xnsyc7x71KhcX96fDGPwPeVPThTi
	 wUjxd/8kujqYZP7Pq8nKXQ1yBHMc6wiO3zMldODxJ1Vbp0DOSdon+tCHoDt/Mmoi42
	 7lof45QsU7rQ7SdBkYfJgHNfjM85oLQtTXIM/2e30Xp5mbeQOPZP4CmAGdEiMcM+mK
	 85pUBO/eByJBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92297C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174899519357.17614.14664410321277049411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc8009ece8b05fc0958755a6ed52bfb02166cc686191e27caffa61444033bba
Date: Tue, 03 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748995193
