Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391E020012B
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747486794; cv=none; b=G2AR8kY6nA9HCsmfHidWT+Ge7LOGjSxiupWHq6NeN8DIkagaeIbFwLQxya+/N2IGtYfEbnILspew3ZchXJB4AEfziqR1Ee8R/Y6KbSqGhZjlaOwYs9wDVCXsx6gZ+TiIiclBgUywxcLVX396xE/th7WuWCYHbRYcn4QQMzRutH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747486794; c=relaxed/simple;
	bh=/RDpXrZCdi4YmDSifC9+2lho5CdwTsN4aMN+LdGWhwg=;
	h=To:Subject:From:Message-Id:Date; b=iuNwbKq1JINDUaeOwi1cr96l8NmagcYgva4q0a7+4+TF71WcPa01dDVsAwOaNtmuaYQPEGwxOVwT0cDlGQvmwTKZ4WPvqGNI1+Brmt7Up0Q+Atkc6kRPF0PFtMLqtVoF0NRkaVQYBqI0I3xzGZGLOMlYLq1TfMPpjf0O13AQcdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqF6eoqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqF6eoqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A7CC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747486793;
	bh=/RDpXrZCdi4YmDSifC9+2lho5CdwTsN4aMN+LdGWhwg=;
	h=To:Subject:From:Date:From;
	b=GqF6eoqPFS1K+ypdgxRxmpuIEhmYrBa8fJQjJhmVWNbTvt/qBVLFoOWcog/CkqSlX
	 29RwkN4/yi47VySINWLt08KR41numQ9aQduVq5e6dd5ugrcKsf2BfruawzbgRPKuzF
	 bRwYcPzW3+kSaBcGHHaUWpgn8IVOYXHevYEqLNgszGcD2BS7yM219ZHhMjvSnKs323
	 nMV0tQqMlf6NQB+QhJH3RRj9gZssMWtJFal8zz94pi686F5Bv8H8aGjfBAs2CQiBBE
	 JqYs1UInf2v8gBExsx6GQBYHpNsJB6vMBGPLXMiYMn9ui0t3hNaTpsXaFCZ3b5mTko
	 WobZG1RLnngVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9D9C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174748679357.13421.9588554089782305458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e8a3731e88d89f8568470450eef7a8fc7bcad71ba42805012e26b2b31877814
Date: Sat, 17 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747486793
