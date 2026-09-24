Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA1B486426
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790251834; cv=none; b=tLbySXpIoCLP7G7R/oRs+TZgi6FcCy+MeK8I+mI+Ps6JArKgnj1GoeT85MOc1RkDUX8MENBdhBPGqs3+PCqXvfxjOfUJZvC53d0BOKEeytuH69UxN8zv/YNfWq5XTPVZ4jfLCpSdhhubE3ppl3OEcdPamFuM/IES5CaNrvmOLOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790251834; c=relaxed/simple;
	bh=+cX4S+H1HQYAhIpGqPHiOiPZF8uZfzjIC6lJb4+9lI4=;
	h=To:Subject:From:Message-Id:Date; b=DIQJMqzBSGpVu6fYl5UaELXR/k154QKczKLy2oWm9BDP0rOV/EeX8KrHTF7U5KJ0flel8NTNMASkKDn1JD1Y+GpGKVEGuVrMrIbt8efK6+b6Hd0SX5lHFNBjw5tO7T/mfVopEAh3ogS1OPpuEDDZbC8b5tX+lXdfs6jN6eHKdLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcFVir8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcFVir8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E2CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790251833;
	bh=+cX4S+H1HQYAhIpGqPHiOiPZF8uZfzjIC6lJb4+9lI4=;
	h=To:Subject:From:Date:From;
	b=QcFVir8q6ItjJMp8zL8Qz9qXvFxlP5zqndUKRIJ8MTOipU1d5T9wdk5jxUMvk9E0A
	 6zywlSmFool9gFFyUpVu/CjCKRis5QoE8QPDnxyjhKWLbhCeLK7bCrvhXS8ZcYu0+J
	 hlylH6p+cqttZZy4PuH24raqnYlIbAGVN7Ps/rfayvQAPNsoQXguWbeUg5yM9A1BGH
	 saxtA8QG1fTGn07dAFkNs56Rzg1CwktHsXei82OmuHPQSigU2zfkS0TKk5CGxGl5n0
	 A9tqnGZ7cC/5TXMY5S3kRsvDsOLJ3pHG0+lelDQ7WI72rhsA9TM0xve57ESK3+8prE
	 MK6uoodWhgBpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B821BC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179025183374.13177.125196964206779307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca975d375e35d7bacdef4589455beb6f15beae44abb598c9ed0fefe1f751721
Date: Thu, 24 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790251833
