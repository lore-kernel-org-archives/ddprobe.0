Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1654C6D
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762907994; cv=none; b=axe6DqjZvrPPIV7k1f0FIzoK44nKkPwn0AlgbkYb6jTkuuGbfLkAgZ3YlSj1dJPUHiQpjN/JTL8nCrc6MV7zMPr9ByRzKTs2tBWRjXqAF7Lka3hO1hV0uS66KhsCrooJc/f1PtyNhx+rTFMgPQYyQGlxUipqsEv/gDqLjb2EM5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762907994; c=relaxed/simple;
	bh=Da+2+5Dno1ZPDUcF4ah1eeOAb0TJ9ItWykzvQesx+60=;
	h=To:Subject:From:Message-Id:Date; b=SydPwYqtZggpPmzqzQYE8V8t0LodAF9fTj1XjbBfDcG0zKl73Gf/DQob38Bse94eZC6BtTyHyECNWQXJiTsCrIZInwlENKeqkv+8NdWJlWZKd7zJXfMn5ThL+l5W11hdSLYMNyLKxHmIeOD8S8tL7dJDvpdiTPEdbk69TKqeHCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIpnCN8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIpnCN8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4CCC19423
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762907993;
	bh=Da+2+5Dno1ZPDUcF4ah1eeOAb0TJ9ItWykzvQesx+60=;
	h=To:Subject:From:Date:From;
	b=rIpnCN8jpYRfWvnwCXY/d9UpiCNtMMo3gVE0yU7Gy+lqAhFv4qewjJZAezDX77VYU
	 eQdhu6Z0DctdC5xewaugiYrAzN8YSC1o+228d733MSsnXKNEuJAFll8oRwfA+Wk95R
	 dwHmfSuPewbz+vkpvBdISujupfacEof4Igq6bifcMkEPwLx7kvWdXAEeivWUxFv1YU
	 vua4kOcpZ6SDjo0wom6l/a6ouoK++mZLdArhG1qi0bQgjVOljwSLkF2EiajUtogrGD
	 zyJjE0WsVkhzEnWAeWDVzNA9Z8ZGbOmoOSR6B3yvkaJrLS5UwnECG32/1gOiRwnjDu
	 2OZ3aPXq2kpTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D88CCFA18
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176290799358.8063.15684598711779347096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6c29df38ad88aa33e876122b413150c9d22697df865fcbdd12d10fb0d878e8
Date: Wed, 12 Nov 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762907993
