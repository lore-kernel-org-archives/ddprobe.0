Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154503644C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767723834; cv=none; b=DcOpHu5OBtRwcNgfj/9fAhzffRXhkcmiMQdwLvmRAbyWGeybXpMXz8fB6tgadw52Lk+xTHh3FyToxtqavkREb/MjPAt9bT6rhUdMrwj70xIAC+jCdEKitbEDQXvA0i8fqrZKBTJoUJmD+VdGiHKjCKH7t8ZN6fi/IU3wgooRtS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767723834; c=relaxed/simple;
	bh=bccmXxCAVt9JUwX83l/trC5QX5yO/ZFbBQEYgaIAxV0=;
	h=To:Subject:From:Message-Id:Date; b=SfwtnkRNEQZPd4y61aelkNYcG7Rm8Xx0Fh4ke+gdJ8S98/i53Gp/h47lO0Xx60ri2aciAlcKz3kG3u75LQKnEnIKfzlhBQgnj/0lzAXv/9bw3GJkjA94UAnpLAMpKcGPSBAR5ZfpMmXKZbbERx612MZuRQd1NUiORTQO2izVITA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovrJYrRU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovrJYrRU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48C1C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767723833;
	bh=bccmXxCAVt9JUwX83l/trC5QX5yO/ZFbBQEYgaIAxV0=;
	h=To:Subject:From:Date:From;
	b=ovrJYrRUnniQKFe+CJRK110Y9pBGrXC4OaxpoaEDYothXjDwzPW9UyD7BKyNyM4Zo
	 CX3Bs056RzsTPGCYiRs5gwkZ5LVvabC8k4D9DL++zA3LSOxBtRiYjg/+HCgVRMare1
	 Lbs71ppSnFk9C4pG21TkDnh6zeguCjJqRJOCxQ8p/2Bl8TgEZwzQE5i2B4KZtQ/0La
	 QiRWGztOtK1mSQY+zkxfoFTogpPvRbXnvUkSddcrsJ2jIcq8b8AiBvLdPFaj7SFGoz
	 okwISzxiwlC2ytPUuOYJEoNoHhKVi7I3GlR9Hqp87C3hJh4qKDRU2FjSmCYb7L3b5J
	 wbTwNA0K1NPLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA7CEFCE7
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176772383358.1253.8850237597997437892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5580ba30ba280df2273b8b0b007cda8ea5528f19785a8d77ebe1d25b24ddd2a
Date: Tue, 06 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767723833
