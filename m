Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B5241E6A9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784917234; cv=none; b=oAVQcYFhxz3TwWh/WRe5WaEFdws9+yTragHuawZGilG5t3CEqi5fLpP+dQ9mcc8ekQzj3pZSpe5M+jvUOlDvSQsM1BATNSAftm4hOSV+9fUtR8w/Re92iNMh08tjptfSv5csDFf4wtZwS778w34f53etnG5UIgPv3jYg1AsU5vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784917234; c=relaxed/simple;
	bh=CduO14j0FQH+JYYQXpIqZmU3N/Zb0aYssaj8UKD6tXo=;
	h=To:Subject:From:Message-Id:Date; b=Th/7x4Xj/6D5LOrHnyefGLRo52anliqx4GM/1VmWKmSaqhBjC5m47PfP/L8BKDwCCwYJtRdasirE9z9l2PRin1N5vOq5rkBprQs8oqgzFeApsNtwNlTP2eIKiayRHOu+L7IG6U5tHgnP+yWaU4q7puTyL36yive/GWHEyAL6Bdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndn9xTVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndn9xTVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB26C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784917233;
	bh=CduO14j0FQH+JYYQXpIqZmU3N/Zb0aYssaj8UKD6tXo=;
	h=To:Subject:From:Date:From;
	b=ndn9xTVKcQc/kxJyX8WwB71mfgeu/5KMuhJIXwgV/fsof6V/FAEFUchR2kQtg8sY9
	 vHsGQ9pEb8DiatRzDLdlvyYW1qd4s1V9z54Lvm8/DGcylheYFz/Hn9RYhUOIgTI9D2
	 DlxmHPO5QBotWoG8Q+iNg+aGYyYL2uLl+oILxw8GmTtvbFPnKdnioUNYnpRvHHcnsY
	 k+0/RKY/nhsVMfFwFjz8BNkmCTFzyx5kwpvAPStO84Vm4nPPSH0aB4JPzCWOlZmm3Q
	 gpS0wDL+8SL4lspFu+rGToPnSAWOtW5Vssfb3+tzgihSTd/MapwqNCuYJmkn8Y35PZ
	 Al2n+ApE4C/ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8E8C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178491723368.2615.5968358081972462280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dd700e21827344b80bf8d5d7384d9a380d99f9c3c09f6b88732f47f419400ff
Date: Fri, 24 Jul 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784917233
