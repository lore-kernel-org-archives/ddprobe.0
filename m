Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6F620FAA4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749298793; cv=none; b=qipqsjSH+F4X8jGT3jvGmM2UOLrll8+Fjv4X7HpbETkpxvz6nmnG0nsr9l3LQIDa96SoVEFYsTqtzPvA2oijhqf6ikNSvKqIevB7iIOmBjEeF39Hq6IPEfUHqDjyq3yMQQQ5xoHHz4yrkOeLpCWKz+J2eoVShJDH8WHMSbJPYTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749298793; c=relaxed/simple;
	bh=orfcISfQ8qoHO1jxkqrA2MCH/67nsa8+WXNFLIIT/5I=;
	h=To:Subject:From:Message-Id:Date; b=s84UFMRzF83Z4afekhKz44UFLSwuMHmGmhsE5P3aXco2JDQYN/qKVRhtAeBpIiC7Em1qHMUdIxd7Yw/KO2liSIY2Ns847uYkrFg1xJKfaQgO+L9fTTe6eR+vrXn1uEaEJsk9UP/DinelU5Gh4FLlOOW/CsIyAhQXBjWa49jBWOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYgvc1iR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYgvc1iR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F992C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749298793;
	bh=orfcISfQ8qoHO1jxkqrA2MCH/67nsa8+WXNFLIIT/5I=;
	h=To:Subject:From:Date:From;
	b=PYgvc1iRE+oOHGB5hVYpe1KdXDdlG4zjcbQzdfRSH7WyKNmOyhqLhVmM3pKBoLCkx
	 xELIR6VuT1nLB6xAdMVL7rP/OeO8PvORdgRfulewLyXW4IqhsnGO5NW/J619I7qt+t
	 3EKyfpl8EKG0zSwT+NHYRbI0K3DlMlVzjQ42nwJyJXbXO7j9IKSQtp/ymfO5FyV2N3
	 IO1EPCzRV7DJsX6ifAfthW4cIuddZjgoE1sS6p7DUus/D68z+IPvsd5Wp8WYhdmBWi
	 r4B85YLx1BqtY7b05YwHcuCWhqKQ4m1+z73Q9qJfQAldVYwNMQ/rxrIgnw0vvk8+2f
	 Y82gsf5+BUvig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F20EC61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174929879357.20738.1728015855945923985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27befee0c1a613398fc207d380ad7483fabda418a89a653fc5ee9ea4c38f8bcf
Date: Sat, 07 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749298793
