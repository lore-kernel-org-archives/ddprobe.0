Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C35513B5AE
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754722794; cv=none; b=Ub0JKS5SWXZQwbuQ/IMcNA24a4mznFWRf7YmJ8N1LDxzjKXlMgeyByPn6JwPsuN59uYtfobqkekNcLv2bFAKjpPbxLE46nV3NwlmfJwe08GMEF1oWzdwC5H2nPqGJk1vt5FuPTAGsyYOzjpc2cfImyr4jmQfjZWAP9cTh3XeFvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754722794; c=relaxed/simple;
	bh=4n4Bqm2DxjcUBSkEFCa2LclXbBLHyhtOuPHiQJT38Ho=;
	h=To:Subject:From:Message-Id:Date; b=hzX0Oeu2Y7D377vzMj6Y54KJgjnqGsJDnNq8MwmJ02ZS69DLQFLM3to9ITqJCv9imuQ0OJ+AdVDchAP1c8+hD9CSTzP+8fIs9vnelW6KhSa9MdTQwbb35r19REn11/LyI2bkNqYeFiafItSr3FYRbrOQyEG7AUvAXkE5EQ8uz7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJDumkPl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJDumkPl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECE3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754722793;
	bh=4n4Bqm2DxjcUBSkEFCa2LclXbBLHyhtOuPHiQJT38Ho=;
	h=To:Subject:From:Date:From;
	b=cJDumkPlE/qKn3Z2vZ0TF+/YbmyZBs/XMvk9m/56M7N0tOVZUqTqk0UkCXCN1mSRz
	 w3Ukh/icPN62dzo1wPZihJQHq+gMfInP/bWDo9UK2EnZ8g7l2y6WSHDk+8nFIMCprJ
	 OjfS28a7+L6om4t6gZaZNPj4Dw9bZnDL/0zyqkZsKbzCAjZkkZIRHVTqdnJoK7pFYJ
	 oRu6GwKXI1nHnNeRSyJ2IkwlraFRkO5sOYPu9tMbI7MHTeIuZJK+/7xRO+F5hVuoo7
	 e+q0oSSpPea3+Xj1mRolUc2EjRjrK1MPBtWRga9ezf+1yz46z+sP165QvIaDpUnYwZ
	 heIB2MQWfyDrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91225C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175472279357.13050.2484916742054296239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a8b1274313868cef1982af14779d04286003d0d336a40b60499e7aaaa56ec2
Date: Sat, 09 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754722793
