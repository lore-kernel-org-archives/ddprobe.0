Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EB511F150F
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 09:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739266135; cv=none; b=DLl4fKwPBdoEgUJaQ5NfR8XOauYrOGsbougsARcaR51EMM7mKkcCKR9439/l/muhpT3swPOZpAcevnIBhKe/AgrEG7xxnqlXzgHgz5btqAcFT+WNoLl2zYMSqIBBmwYhhT31p035hgzBkFG9DlDHDcWSdT3BI/siUTE32PqhfY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739266135; c=relaxed/simple;
	bh=pWq8cdl8G8dEqcbXe/jD4jyhzjjmLJLDCmHPQZK9p2A=;
	h=To:Subject:From:Message-Id:Date; b=tMVpcY8pDGHEueoPnRT2c8Unux94ggAUmjV7CzGXiKbffKT99eKCaRvvpEscurWGlAx83Kjb0ELgBT9Arb2TrEXzGr9bQUIH+HKk6a4/S1p/64/vMTUIcJAabzh0lyGxvg5t6G1vq0AZ7WenRY7Af6z3+oj/yaH/VrXXxmZBTEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvtcMQNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvtcMQNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08323C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 09:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739266135;
	bh=pWq8cdl8G8dEqcbXe/jD4jyhzjjmLJLDCmHPQZK9p2A=;
	h=To:Subject:From:Date:From;
	b=TvtcMQNdRLdMrhJ6k7c6JmoT8OsboQf3XEeisOsrMcyeQpSWdRSW6GqhhLqZ4M7Vz
	 8Zy7g566hmSoYYR9EOiQ4M9V51uyEzcLDxwAZHlfG2xjAhoec5c8E7AGwqQBxsDg03
	 dAuss4nvUcf8IYa4P8wnk7hAcpKX3MStE68YSnvR8AAYhV82RFHVCJ0Td+kXM7BQMv
	 qvFjyV37AvSAdiQsDLiefTAmTxurwc39baddPMdi0z1pjl7+VkIRF36Ci/EZGkIo9M
	 rC8iIJos8KgBZChYQB9EXcZ1xY78W+e7N/I1Z2k3KP0T8285Skx+JGINqSehxLCgU7
	 61ln+e7UM5+Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88B5FC0219B
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 09:28:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173926613447.29500.3976835874034230564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e82ca1aae0698a513bace3409734647959c27ebac50dfc0b82aacb60f9f3ed
Date: Tue, 11 Feb 2025 09:28:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739266134
