Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C741AD5A
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767012834; cv=none; b=a7tOhmPbXGPiWQO8sMnypqcE9nOq3f4HFEBNu1WkEb/u+ofwc1UrU8tuSluLjOfVlZnPqLvPwKRFA6CjQgdQiR+f8dxKEfyWZ0xAVhs+a1dbheV18hsfmCA1XDA5RWwPElq7KyNN9sy+iFcCcgOnCXUxTVDFeB2cH4A+NqcRwms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767012834; c=relaxed/simple;
	bh=qj5W5UoXhaAoEEYJXMJ7qG2FouhT85WXEoDtNYCuqfg=;
	h=To:Subject:From:Message-Id:Date; b=XndCZo8ZRxBwVbrBldMiZjCurL16EkPPdEevqOi8YdR8LxO44MxTff/0BToFAa4SXPz96p7Q2Eoy7AFNg7IShY8I9BnMYyGj26HjXQTUauqhiPAedxeF20mP5gxuXgmsYVP4Niq5BjUlmKIj698pg00HW1RgCIu6Ni6fSk8cJPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIlGFOcs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIlGFOcs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF5EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767012833;
	bh=qj5W5UoXhaAoEEYJXMJ7qG2FouhT85WXEoDtNYCuqfg=;
	h=To:Subject:From:Date:From;
	b=LIlGFOcsRPoeLiPCm4yvEBLAYYVYTMM6Ev+Bnsd67Fzz7Zihlfne1c63EqGGEJdKB
	 Po8tPQmrs3UTCIgzos6yIs0FlOcbHwk1dfULq7ER4+W2BRdZTaw7hVsmsncUY32uRF
	 Mlyv2kb/fCJ+albvBk1tgMFLDgWGBskCLQKD5Mn8YkI861GvI6q6K/NjvG+eYLjhMr
	 y0UjXu1BvNCX5MPYWmsslDmIATzJNAfSEC8OtKPJ5d+c//iGZWm9GFddhdU9qdaMq5
	 d05mVswHhfq6GT0sO+GHn/DdZn+8/Gq+l3xR6YZtQhn75ow8hdfZBtFy5UMmvDKGGG
	 wD9XCwNK1yqKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ADDE8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176701283359.7935.18317811800986711495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae698db16d00fbf892cc49cabab43a2e37f943cc7d0bd399b58e59ba1b444993
Date: Mon, 29 Dec 2025 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767012833
