Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2959A1FAA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746316795; cv=none; b=nsjMx73NJz7cDSn85JqOctcmSDmNw+U9tAJAEf9S9NsLnSCgwXZp6JroU8pG9SH1URMIU2d+CDeim7QRfbOd33/uem92fogOlHz1MOLzC1Nx1d4IWRYa41Vn2JrnE5YRGWkkNkKyO4Jo5p1VNs4jytzYUCl1kzW7FppRIaS+mwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746316795; c=relaxed/simple;
	bh=q7Wx/OGG0vuW+Y7uFoF/SwG5fLdPltBbGwMhqoT/d+U=;
	h=To:Subject:From:Message-Id:Date; b=tn8yK/6hSdu9BipSV950bjuTGjvgSQmBdU8iqqcSNhiDs1hHZL4T1KfdmcUUwfZ7paeBEKicIEmib0eUlIGfYAfLV8JU1XbbtmVKkLbLf7jG0DoDN58wDGVzqa0y3jayTg2Zqhgyx70K6wISPJmYLplgGsVBFzoA33dXyWumP2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/eY7tHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/eY7tHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BDF6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746316793;
	bh=q7Wx/OGG0vuW+Y7uFoF/SwG5fLdPltBbGwMhqoT/d+U=;
	h=To:Subject:From:Date:From;
	b=S/eY7tHrIMoLy1dMeQYOftvVSEmaOshZ0DqaI0qw6e2DXI1pU672xIh+EFvseI2Ol
	 zLdUZ29Pv+Zab/+aAAekV4av3VaQDSWNos8OLInLObvGS6ZOB9JvpdvHufuEtzBGD6
	 rjcc29CpsCh7XlJ21lk0GiD6xjOggsmdOpLt9xNk5LnsJf682/IIguuRLGRY0tGDTl
	 ZWSMiklN8T2E/aufYrsnF5iLxdKfNiToPxMk4MMeFr46abTlxY0g6Z3ZLcp4ProEMH
	 3rOgmGWRx/D2ezuu8Jr9n4TXvoh/2r6kJvmnZ6JRJpOOfFQUg2LX4m+I6BVJnV4Yqd
	 4duR5hwumDYLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFDFC369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174631679357.21387.7873808570993890245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c84e34fa7d8d55ea67a7417b91417dddf70116020d4f4fba08db2f4781d7bb3
Date: Sat, 03 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746316793
