Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384CC78F3B
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744979994; cv=none; b=so11gI2nbyrDdLvDfUQhP+W2fZjlmpPY3yfbTVNujRaXdw0NJ/ZeMm5R1DZjrfopdPJAJ6YEhWZ7IoTzQRC/8xk5NKCiQ+0rdoryAs2Bd1YZkYiRucBM4TCPbNbd33M8MOPNw0VyQvroSvN4BBM9WObQLpQ8DUnf/ypPxXZo1+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744979994; c=relaxed/simple;
	bh=xJMlh+MvjYrRt5TXrrxJ06WowoXNACObwcLNTp69kWY=;
	h=To:Subject:From:Message-Id:Date; b=SDcHccx3aD4PjO4V98gIyttiA0sA0HFmcuFIv8p+aimuBA6wKB/Rc4wekDb2r/apiVjEzNo9IxrWmefgHY7lh+p1E6hOkyGntQT/MaYLsCXVL153QNSf8GnE4zVWgghwskUdvV80TW2XQpPlC6xLNNOPJv8fZN1qvMq8/FusF/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4KmxoKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4KmxoKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99C1C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744979993;
	bh=xJMlh+MvjYrRt5TXrrxJ06WowoXNACObwcLNTp69kWY=;
	h=To:Subject:From:Date:From;
	b=J4KmxoKx+pQJHniFRlSCKXqkliZRQuOEDGIyFUho/aoWdImN4LAnPzDUf187BCg8m
	 jTNfpUpAlv2IlJhTIFsVlxHwpMnSDSaeCjIM4FzMz/q9BmqPuzI+UpjGkcXeYoZ+TX
	 /ew2LjQCIJQvi+MfO7dQWWcwLJi8ocjCYzGt5aoNjjsmIs3O2837uEEAROeGr+c8NH
	 78XJ4MTC3fU3NEtR+ArSs4deW1AFMFquyxP2Ffs8rVya2ch8M+G74ULU2RbXt9K7Ha
	 SIFy0KJZ2rjyymcPrr6cJCLBJFk+RPkAF+hgZB64fvw6SNXr8mr1yte2R9VDlH2avL
	 Gfs381jtg5+Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D8CC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174497999358.13062.16923303097267020256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58b7ca35fc8ade26d1dbd7f9ac2cc0be082ec944e032ca70c8db26cb614079d5
Date: Fri, 18 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744979993
