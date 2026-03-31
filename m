Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C473F23DD
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774974894; cv=none; b=lv/J7lNTUMnmZIrMx8baBDOF9BWfYrMwiWxPz3M6d8bP8GPRjyHcs1CSPPOxEDP1GOJ18SmK9rtWckRXd59yPVN8tuai11muzlmVqt0r8VyEbq9L5UETZ7cxhLAYGFwK3SWX7NmKU1uNLTn3muI3Nm/CWC0CYQf9sVIoxQ1h/x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774974894; c=relaxed/simple;
	bh=9IhBRUxZ3/FEDKHZj6vro/HDM/x1ZT9c+ZvhDNQxtfU=;
	h=To:Subject:From:Message-Id:Date; b=ZA5BN1NfMK4mfsO3FcGEvYTID03hmQQT+62ekTm5j+rJjPZK6hs7j/Hla60QNOX6/5p72EwS1NXKgk/p6ybbcfdjOCE1AXFvqBr+vuAI/tW/75tFRcBoX9WsDZxfxxfipo5Witzd9qWEhDZ3RuZMSZkadlcKCswAEvk+6bGXRwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KO8N9s9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KO8N9s9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA004C19424
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774974893;
	bh=9IhBRUxZ3/FEDKHZj6vro/HDM/x1ZT9c+ZvhDNQxtfU=;
	h=To:Subject:From:Date:From;
	b=KO8N9s9oKx1/FS0KQI/E6KPCdB0/oRS1u6VkLeRLK58k028OR6PsBtd5Qa7Qw8RyN
	 8BTbiZMDB2ejY6R37PPPk94ffdrt0/V3En1NpN9F7CtdCnOyyjyWzu01V6neX79AWZ
	 xudloX0nUa7sItvhGME3okI+mFOGZNcbtsl7RA8t6LZ2as+bD2UAVmH9q1VvVv22cc
	 vNL+C9pzdU+DLFYxkon5Dw6F5TzWC2Wl99/dNJ7WR7EKE7kw35vmPvOAzri5Q+zU/x
	 IzxUehDkeyAsKPXfKTeLLtIqwvxYlsgJkGOubrD3FqftECIcxIMkYDESrpG0wWx0LZ
	 s19m37lzp7lqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0BC010F92E0
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177497489364.11903.981804420723829237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe07576fb92f40fbf2ad27725e9e6bd0cc94695ab3ff260450a8d32f39e7950
Date: Tue, 31 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774974893
