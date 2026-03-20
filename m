Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C621E2874F5
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774034093; cv=none; b=RHUe9toNdjDllr8WxM50+aBjigJ4WUA4XUWFUOByyAjCZEJ3yfDnuPbpPw7zioHMRsEphtdlGfTxQDM/RjOHcca6hkKDUf9/YBY6NiMrx7UJhfJ0BR9w1zL/pJDCKflFHgA5wHsmdnwTbGxlrqHqBR9BYDOseOX7f86Lx+MpDb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774034093; c=relaxed/simple;
	bh=eKPKXSsiSUdIgxvI0vLEhf2NEfZ5gcmYAeLBqdqh6nM=;
	h=To:Subject:From:Message-Id:Date; b=kjXWrDYaN6n+aignN+2xHMJTAew5WHAD2dk+YdRMn3LeNU/6eg4hGA67uFnTVomgdN7N1gqfF7eJiywDIQ8JLndnzOHAFmGbvYALdQbjQOfqW5GFdbfl1Pzy8MwjZEwSRCOmXgN9TyBxLgaE0AJagSgQghB1k60va1YqB1EJPLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxV2LV+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxV2LV+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A345AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774034093;
	bh=eKPKXSsiSUdIgxvI0vLEhf2NEfZ5gcmYAeLBqdqh6nM=;
	h=To:Subject:From:Date:From;
	b=RxV2LV+SXhsya2oR4/7eAnU9pBhPDgM6ovs1aYlcIHMeLK7yV2qtY+9Z0dSYnO60h
	 8BjF+0aLz8T6WTJh2RhiLeSTn9MG/y9be2TMhi/nN/e83v5lswG4PGb/uUDQvJN+qi
	 rxpKBWhxEywnxakDdxDCKz3SmM4DlAZodkR64X9h+o6fSn45ZlJhP3LsBKiq7AuQrK
	 eGSbKHyl5MqoZ8+YYb4uDiqPMNqI+W57LLsv1ai5hRh4ltLSIWGItRGYJL1DIZ2GJl
	 eoHl/ktRCldKha17WvVsoLspi1HwTo/tk7ljjqPWypR60RoC+hPLHFJjXZLxLhc043
	 m/yKpLQ/C0BCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921E91099B37
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177403409357.12304.18209565103260155274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 139522fc92717307548012ae056fe40613ae57609bac6a1d94166896db287721
Date: Fri, 20 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774034093
