Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF6F289E11
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747915794; cv=none; b=Qv4wLwUUaOzJBIY+rXenIrX9x8NA/UwdgHF5PAPPUcXPQY6fnzu86QcPuOpkmcmmVLbGjNmFLoBazwFWfPTmg3Zo+uTAksviUG7uW0RkchrNXYiHfHKWzWdqcH/CG2xOdqAWQm67yvCwmbcglVuDnD+PVXD+GLsr9kwOhLyPDb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747915794; c=relaxed/simple;
	bh=5eO4203p57bBNiAYaghxBN7EaEM0B6DwwPimDGGx/2I=;
	h=To:Subject:From:Message-Id:Date; b=ViDLWoXLsziGxsfT7GbvnPdNu8MmIKylRaMR3q8OJSxHlFWu/LOvmT7YCS1Ak3NQno9N9MfQxpnic2QsnvoGs7dxY0WFZPk62/L4SqlPC1xh7D7CyRdV4CSujI3n6ticBCe7tX9YL9bO1rrWhbGXHfYwV1YONLIFCCawRT6DiqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GL9wWOb4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GL9wWOb4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D709C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747915793;
	bh=5eO4203p57bBNiAYaghxBN7EaEM0B6DwwPimDGGx/2I=;
	h=To:Subject:From:Date:From;
	b=GL9wWOb4I0CQ602jzMyZ1v7MJ5Ge7pcl9hN/dJ0Z8x+6Pycio9esphN4aGAV4uY1C
	 5Ns+Jwn/DSZJrkQgq2rhF+5eBtzICW2sUogfVWZ3o3ecNDTpbWjPVSHyiPkII9A3Vy
	 5x2z1lzy2vz/xm6t35tFDKl6PoCQMXOAj1jFVuOA1EVFNeKw2KJrdOucPgil6qF9x+
	 wJlDMw30JqmwwMQw5gix6YyqAo1Ue+wX9rMRjdEjPnxCTsabOAmm3bINdkfFqBYYDq
	 Sp4Qlq9w/8zQEOc78moCiZah8HjO4f6lDRl6qygujvTsFRPkQ3/kxQcj4XaCRj0/8d
	 KCtBJMJR+ZYMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B5C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174791579357.6013.6362130902719017007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5272e3d672b59a98891cb2ca2beaba36827268c8085bb35a20f7dcccc50be4
Date: Thu, 22 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747915793
