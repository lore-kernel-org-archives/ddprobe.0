Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371DA1632D7
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747890594; cv=none; b=J2fBD4MDhNHiXMR4kNjT7MKV6YQ13EQCeEcoSAcJzb12AJJHdvRqEi0FXRUgFSZn71iVsRI3vY8723/JDtm//3aVrLv1dC9V19Ybba2WCTZYk7FqCLMsOJQl7ShGZ8PeUKosiBtZfNo4AlpeUrXxY43/1Mo3E0rM669oDoj2Nj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747890594; c=relaxed/simple;
	bh=USPHgyTBGLltT+w/AFYBFSKu+j26+m3HS/X5EFRMVy4=;
	h=To:Subject:From:Message-Id:Date; b=aBN7307COQ6kGVw6H81jZr/awEA/kFXYrN9hxVeKeo6IErh17QcpYIOX55VnZk3ffUgK6LjBI3fsb2YitCCkz/yJnJYo/8pzUqYGBhTtE7cHVX0E6SiKKxNjsl1GdfMzECA+a6YgSg5tpgIff7DsglsaGbuqFm62a6hZpHwQunU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4uUgZs/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4uUgZs/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C44C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747890593;
	bh=USPHgyTBGLltT+w/AFYBFSKu+j26+m3HS/X5EFRMVy4=;
	h=To:Subject:From:Date:From;
	b=F4uUgZs/nkCwVlX04SrQjlW9e6z6cynqONKqIZd0GHHbkJRPL7Smfa6sqWpXuotCh
	 0o9oNWgsl5n+rWG94dgMAaySOSHWdED61R550Xw/z5iehWJ28/lbe0E4r7TzN8LxBd
	 qamSC3TBbuggMEU2ObG/fBVgJznu1HQy0/taIKoHsRflajF7uvhC2IT2Qldd+2qqSv
	 FmuUS6YAuus1AjAu1JJwHZWf8FN5S9q2ap+y5fAjJaYJEW+TublnVbEf/QJdSxsUbQ
	 scMdBdqF7pOCtHA2bG3OLcTz2uRbweIxKwN2vjv6jPZGCD5EQKsWKX5KtG1KjH9z8j
	 2NEJWtAFyFZMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F450C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174789059357.19376.11226607826946239222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd04b99108527d395ee872b1f4db42af03fa39a96a044dacc418ff564c1d7f5f
Date: Thu, 22 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747890593
