Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A7335F5E6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779172234; cv=none; b=mJlg9+4jj8VQ0nl4Js7mGqnA4yAa75royLLoBkCkNQFqAa7otUgzY6zwkh/iK6CzT6E1nHiNDHNM5lIHfZw1Zu6mbu/gLLOl59TQ7/f9iEGKsNeTEwbe4/YrrdhNq4GoMWuIIk7Qk/CTH+7p+B3PLrfwVc3IVZq3WDn7k1UE7Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779172234; c=relaxed/simple;
	bh=zgC+X4K9tFdCHkPgjtjRWm2dU97q/jfezfbCnqT+pG8=;
	h=To:Subject:From:Message-Id:Date; b=fgqLBYQJrm5CUicQhLyey1lJGsC6j2HPIQ3/l+I2VLa4GsrzAjOqrIbGlbw4YmIHX8UFTFJdN6SbcMbBIAyVdTldRYzybvB7T4v6C35uQl1xnItLL3ALWZpcG6R3GfOBeokWQAGxFSP3zrHaTKWFwx0v3U9QotXO8eMLrT9Hl/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxoZxGJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxoZxGJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF635C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779172233;
	bh=zgC+X4K9tFdCHkPgjtjRWm2dU97q/jfezfbCnqT+pG8=;
	h=To:Subject:From:Date:From;
	b=dxoZxGJ+iJRwBZ3oSozZ9SNurUTqlImrN3P4YjolnFw91xk2RiigjuiP9thUjbYG+
	 KLOIrfUWrMzCX5h31oqK8D4+QNkYSI0FKKqU+W/7B6ie+yDQVkk31VO/bu98VuwSPS
	 KItLHS69y5ZAvsDlAL0DuVEr7qRMMaV3EQH1I94jtlGFBREEThPbp4zlh5JnJyuGyV
	 x1WePGlCaiUDB0ftZ/bdGjLMLelHzLpnP3c1C1gwT32wwBb9/0T7vVLbVm24xXez83
	 GbvXJ/UFkcvmTgarO6obBtOEtWR3mvLTnvpE4+kgbeghIuZ1sR3v4g3FqZEgEMSK68
	 PDNWpzffmZujQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA17CD4F54
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177917223368.8752.15427917434289424943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea96430f8e3eaf3289810530aef638d76a73fcff962e6d4573dcce7eca0e77de
Date: Tue, 19 May 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779172233
