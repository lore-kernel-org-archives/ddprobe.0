Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272CB1419A4
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787368834; cv=none; b=i3MzdFkqrzuRRebEQKN/LHAgBTw2tbUH7YUiKnOEkf5YwIjEr1cstDJyYkMhLlDX+9csL22FcAY+K9h00JL5SRKNI8YWZklt5n/ams2Dgxop7633KiijXn921ElNvVhWHJ0XtAMg8ij7ZIStjf0ssaT8Ty1QkQ3cYzO5lWuaLFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787368834; c=relaxed/simple;
	bh=P/GvjuLwdl6j5IrMHrliH2/o5ZZF9BtqZxauY6tUBfY=;
	h=To:Subject:From:Message-Id:Date; b=JeD7XMIIWSOgMqg2KzDp4fNCgjtsTloKYxJlHr8djS0qkEiPI1GMjZCtIK0F1/x+rRmI5pEcl1MpV+6rAifV3KMzKLtDTlwC/NfvUWgVEr8xjONc1RCO7VSFO8WkbY3NyW5lS+Hkcjn78GiczRpMoeRPoVEoALOE/y2SgpcylF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uhkj26AJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uhkj26AJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE89BC19425
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787368833;
	bh=P/GvjuLwdl6j5IrMHrliH2/o5ZZF9BtqZxauY6tUBfY=;
	h=To:Subject:From:Date:From;
	b=Uhkj26AJgiUX08OJ6jLFdXALHlwYRAK5JhWNFE1jTXwtydd1/ZuYhdpjmPaZBLmcY
	 zE5DAXTciEcWoDYga+XispvtKWjM645oQU4tdlTwJev0UzU4oLNUKDTBuNsWEGaPRR
	 jGIdY+1gDEG/39+z3WKTNSyJjniwwQZlVn2yVBKdpyBv4tZT8t9gtrVaUcD2s5E/v0
	 ht7wgkrd3cr8baPGyg2js71caI2ZajxpidP+PR3KGrVw9iSENbiIAlxhz48+jlMXf+
	 L/3ZN7fFV3A6PIXRaP8Wug7PRxAd2HWGXReP3KxT/RpCx6Jc9spoXyS6ebIWk2HpXo
	 BWVjVjDdbTA7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D93C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178736883374.15576.16094917063539908273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1644e15ba1784282cc8161f02bcaeafa853f1d542a6c3e6e05e9a517f3ec4c
Date: Sat, 22 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787368833
