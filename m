Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E92F15B0E1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720532783; cv=none; b=ZlWC250k4xubH4bXDNe1CwLqK2NiUHfhNv854Gc+w6FBOZX+IkEMjl9XKPCpUgLlucOt40EVLFt3BZto1ytfy863FJHDDwSM4a9W6TNEOqlz4fzwDpjh8CdoxHsScfc9qjs0yfXZjDFYjdu95vS9yxu8E9SR/6OsnS8mkrgR9oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720532783; c=relaxed/simple;
	bh=gfKcRCDWqxa2wqFAIllezV9edw/2pPY/Hro0Kg8hXME=;
	h=To:Subject:From:Message-Id:Date; b=d4VK0u/DFX9rX/jfEOeVm3R1NLeFLRq7cCTW6I3zZ+vYJHsyWAvY8PMp9+xpEc4dDyGPhnHAfiSkJgn8ZRMCjJbe5iZUjbUETJHpWfuW30iOrKSMwz+jq+LsmdqKBPQOW8kFq/5JLZvmIr/v+jdcLTr8/x3z7BPARUpytY4rYnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URSiw/D+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URSiw/D+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB961C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720532782;
	bh=gfKcRCDWqxa2wqFAIllezV9edw/2pPY/Hro0Kg8hXME=;
	h=To:Subject:From:Date:From;
	b=URSiw/D+Zup7324VNOru00+KUTXsLBCwSGcOyCuo15jIsGz51ktlvM5QXz4HAdLBh
	 LJZj5YpDRM+7cH4DOvxBVmijkawh8LywYtdGuMqm0Um+Pb+j9R+O5Igxjn+WmwUqZz
	 nmy1jF0rViU5PDAiyw+MUHjHBGp3eR2iW9w+s9UoTi3ETfGg90rtaj1LEyi5xr9mxZ
	 zUm844mjV/DllPWMVo984s6WoVZ6jfOe6lRWHDv7b9VgCw7GmwRsNZlACJJ0bcblr0
	 1cuqXLX4ZHOR1CrsBeX3EzTd1V8VpnG3eOyaaSxvRiq/zWDWTI3tJ00vtKt2INlntn
	 IuemfX85fxQng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD00DC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172053278276.16275.6306534662326485112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 286ac44d63776b42e4b36018ded7cde3f4a50db344946d59c195df760238627c
Date: Tue, 09 Jul 2024 13:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720532782
