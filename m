Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4641917E4
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 22:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741991936; cv=none; b=GHGEA0JC4rzEB5PDpujHyy0GD7M/nU/Nws6gVLQTwMsZoNxlu3XG9VtAt7lhI5oYJigGXQ266r234V2ZetiUB5HkrbwFzOuburV0kTfI960MSHsTG1FN7KdLo489sJOzRkP3B3kE6gSzVHz/J4cHT/vAQ6uHlu1E1YMf5K5FOU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741991936; c=relaxed/simple;
	bh=2bVvp0LDNXXeVznsPwUjR45oiOtBE1QKg7zkJT+EGVk=;
	h=To:Subject:From:Message-Id:Date; b=ElFBZM0ovyAngo+KdcVQNkZNSMx9sWcipoH/JeK+HxaEwiRTzJFQf59TYXWjZQCq6MZ07+APGrVmw9KbiJ2teARaXm3r0x1jtYAAFZ/lRQXT73PsUWU7/3h0OBQsR6DAgc2yEr9GsVST+TrnhRVhda46N4DAM0z0xR1gIwJeA9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/3gPRg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/3gPRg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9193C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 22:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741991933;
	bh=2bVvp0LDNXXeVznsPwUjR45oiOtBE1QKg7zkJT+EGVk=;
	h=To:Subject:From:Date:From;
	b=S/3gPRg0KeStgW6UigtixMTGgqWHmX4iHDZQ6aWu5pobPexebBCJ/uGx5Jiwzf0kS
	 9WaKSE9zJEeiw77tAYt45RKy5sd3JwdRccU2xZMN8EM/hPuIcQtCncaSLhqZGx0+x9
	 AClhlKnrCrH2vKu6jSGu2J3K6Kk7pVBUUcNi7z53YGBcHQRvzC0czqI8/gzyKntm8r
	 5vYBExFkZWJ7r7lKcZ6lUI7FL/H6PrOmiUMLPy8RsDqFzC3GqvGmoI+YTxpo86QXbt
	 QgNb90Ho4wSLHpGBf2FjjEJ46WylRF5sLuD+oS7f/YzJgLiy+yRKrNYWgWOohN4AXL
	 Ou6eIs+pj5FoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944D7C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 22:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174199193358.32540.1283487236474218047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9ce288999fc21339b29f907bbe93bd926249729446676927506afbcdfa90a2e
Date: Fri, 14 Mar 2025 22:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741991933
