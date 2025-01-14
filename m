Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0791C28E
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736820954; cv=none; b=JzOliulYt3tHLzoGQWDV7RBxFe/DE46mVKQZdx0qX+X/edAZ6KPt0GWoNSaB3+2M+MW2xI8/zOkge5Xu+LR/Bfo5B3lm9eJ/+B6f4IUrNG/EjTgVnF/1R5FmQEcUZ9qXjJW7L4EGz7Efwl1puqtthu153Roaj3UvXn885Ya/GUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736820954; c=relaxed/simple;
	bh=vAuT9gNP8k7nRuCa3MIdH7AGyf/P+kkdbBjyHgxW3g0=;
	h=To:Subject:From:Message-Id:Date; b=UIllebkvu2ic7UA7ihjPhROaenS1NBtSbMHimYEW0VzkKGSDWo4M+CY9Fv0HBmkoqtRTCkxqZ7Bgf4q8PqtEA6Nz44JQXJLGu5zek/9r3Z6WjZQhX5mCFyZCA/3xRrEB/T2iM7lGD7eB+dxmsIkc0zkQMvSwh7QJiVeBnN03CsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZdjZvBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZdjZvBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB4DC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736820953;
	bh=vAuT9gNP8k7nRuCa3MIdH7AGyf/P+kkdbBjyHgxW3g0=;
	h=To:Subject:From:Date:From;
	b=rZdjZvBelYn8YWLoxHYXxQxLFBV2Bhp4YH9hqSUXCQgtaqYBVOH3eZDYOrdDb+D3X
	 hhKWSlB19a+VYg0VYryBFzOAVtl33WhuLOX9RmjbMZSA2gV8xxd6JPmXPRD+CZ/OhD
	 pweleQnVLafL0ns3ykC0Y4HmeQUU+t5s4yL86ilZq+6lB7LbdOxzl80Bn+XDp0OCWk
	 fBRFBwvytx0lZL79kyZ4YI1MQKTch+wSycasXZWIptaN3iq7SXvOXnDuEUrE0uIOp+
	 Id6QmXgvEdsJcs6B2erWDjY7ckHPvQSOZScj2rLsWYc+GC8MWq34lXmUkpn6I7BXK4
	 hvHg+sJ5sManA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B73C02180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173682095358.18040.7428084838987865462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5fb4bbc5b039c2ea232185e086d7d558cdaf8303cba3acd1a6f4a5fda4dc1cc
Date: Tue, 14 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736820953
