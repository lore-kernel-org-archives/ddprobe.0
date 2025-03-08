Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379DA8462
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 09:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741426734; cv=none; b=NtBaVK7jrkV0al9bNMFdPAJ+knZqf909Rq9z48QLzqbW+LP6wA/Afh8cjgKxr2FCB52yHnV/4IDMbEbhv0EsDeIDV+EqwlhglO67qjF4gHrlH2zGyLQtZRyRI0tg80Q6+EnqBdyhUlzpuHdg5FG9KPLa5Wg9Mcp0EJK/KdwGU1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741426734; c=relaxed/simple;
	bh=0F3DH3FN1CQU4ca2LP4SjnjzCm8qyi7lLMAb469TGHQ=;
	h=To:Subject:From:Message-Id:Date; b=Zhb7tRLWQ+OgDstS9IQyU3DnsMVR/Wl/oYaf6Y9Xb1sXMM7mTE42TC2Zb5miHUy4Oo/be1ZLy81ebrfrQq1IwAQ4Fw+IV+/Zm4YJM3XKCo6x3mOxfDi8Rm3JHKsNlaUS8WO5XGkpRWqFVkaAfcHlNVX4kfaExwcJfoA6GuG/BlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rju08l7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rju08l7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4E7C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 09:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741426733;
	bh=0F3DH3FN1CQU4ca2LP4SjnjzCm8qyi7lLMAb469TGHQ=;
	h=To:Subject:From:Date:From;
	b=Rju08l7+m+6tMrG31FpM+mzWaTH3hmDf/pfukOisVQcHvLBOdIM4qCHsQedSL/AtC
	 DQoN/htWw+x9cgOEC7Qu9ibS3/bVpHKBfctW2kfWqDTufFHv+QA9HlLM0Gv/S0Zt43
	 bUWPeY1oQqzXQGhYJ4kAPIRXEKbVIwnUAQQR6j+BezYDx8Y7KcPo8ZP2EVU1JFuipB
	 keCih3gzI5RSIz8sXRq4cdC48G4AwVGeS7OOCWHRXUGqcMBIZ0jh6yPuq4sceJ2RlH
	 /Enh5u9zeS+Meg2ngGwBUQiPu2L5VHZY7UDGOeAEaTi+/oUI+apvlQcVE8jbjEQ9o5
	 gWheKmjNRwRKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CC7C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 09:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174142673358.22361.7308346868929895359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d772fffe9e984f0b06772b7f983ed256049657dabaeeb6e4f0809606891bfd3
Date: Sat, 08 Mar 2025 09:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741426733
