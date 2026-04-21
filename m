Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265B939EF1D
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776794254; cv=none; b=qMX1QlLusnkbuaTDJI0DinwHIkXuzcPIv0T44r5FdZfR6IJ1AZQvu2yPG60X1IyVjiFuiZ4jsdP25Kc1zkwjNPYu8IbxqVZ9iGGe/7Zv4F1ph7WmZBLmCXljEh9dky/RhZucJ5Jtswfv/F+bcTb9X9iipr4JDE5K77vcjS4ET4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776794254; c=relaxed/simple;
	bh=2C5cQJBBgK8rj1r/LVMVO0Kx1rPyCPdWPjx/9p3P1IE=;
	h=To:Subject:From:Message-Id:Date; b=gy7iCKbLKRg+IUKffvoeGDzFFPCG82+wL5C5w6Iddz0/ZDbjEi0eMMKxls7xAHe+IDiLbwQEfoZ4pJPAgd6KO+Os9I/QhPFNv6uwucfTJNSKahjaoLewr2GtvSbZxZpa6Yd/STgWQK19z+Al+prPO/iE5t4vk1iL9+1IF3YoBFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iriH3CK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iriH3CK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8298C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776794253;
	bh=2C5cQJBBgK8rj1r/LVMVO0Kx1rPyCPdWPjx/9p3P1IE=;
	h=To:Subject:From:Date:From;
	b=iriH3CK3o4xwgvCro4M10BSMmc8xUO44Yz+sCEG22mKpD0jlTtHtXGW2/gIW8kReX
	 E9LSsmxCZ4hVwWBBeJ8zZ6pC9DL5pq5Wh01BOtrM6btmYHenAyeooXUI7HKWAHtOGE
	 RM4MUl20zeO3ZN22sUGsYAoYNB93WqmlAl8QzvGNTr6XJ9XI+Mi2EHMPmCcpGdEmxA
	 LToqgvUzjd6lBFA1mKKZvQvyfB4mvc6Q0CGk9Px04vKdYWHc1tT3b9F2+qtcUjRqi3
	 4u74RqAPED/bA2w5h6JpSicrTOfRkZoBokJEOKNkEovYyzxUdFx3MkDmk/v8sgt6+D
	 mzalXhdpraJuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BC4F94CA4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177679425368.17644.5249692254115833410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cde866a1069ac3956bcd558029d8e781a7032862afea5b7d819fd102528403e
Date: Tue, 21 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776794253
