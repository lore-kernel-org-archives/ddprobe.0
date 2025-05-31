Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54036EED7
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748735994; cv=none; b=SwhccZB0P1ikAhfGCquR0cbgpU/aEnGKC4LBJjUhfw2Mc/MAwTTUW/mIAUxkA5bOEN9MkLOowtlAcMQPmI7s71hxD//QpntJQm4aK2VPmex5zRv3QLx/+57DY/pdNepWgKHFnQ5OqFyylC7+qE0CwIphcI1+i04yzot4v5J1W58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748735994; c=relaxed/simple;
	bh=DGpjvijq+MlGO7mjAmFvGFXK7LtdmuI942Yf8ay5yOM=;
	h=To:Subject:From:Message-Id:Date; b=HlUGNy5TFWCsWVXAUa5mXOWdMbc/gGfS1MO23uGm59bKFHHTvwczUNIYtlUkeCslRVvcuSs9nK8lta1LzSea1p8CqRzJQ4d9Ua8gq6ZlSod64Mvw9zS0KbPfweQcra7kv7S5Kij7YYs3WuJ2pbUv91PWdSrKs47Vqj2Ckn/qTHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bp2FiZqg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bp2FiZqg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E48C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748735993;
	bh=DGpjvijq+MlGO7mjAmFvGFXK7LtdmuI942Yf8ay5yOM=;
	h=To:Subject:From:Date:From;
	b=bp2FiZqgTYC2QcOIdPjQ1cU5tKg8qozPuTIVYaPKdGX+8M/LJrE5ywgI0dbNlrRj1
	 EbIMI1IUg5T04/0WckU2H1E/r10sq9xYqKfSv0tDP1P6hOS5nfkvvOcd1JXLoDH16X
	 pXcsY3P9MJCrtfSElKK1hoCIKlcbfunSAMcLYRqC0bRDkbn1FS5mzOoNUbz1chiKZm
	 Usg70v5pyAH/nUXEFHEaOjZH27zNUh1w8GLNkduOpO7yqHhrVsgJXgSFm5SxEHsT2x
	 RgRDMhQMAL2nxco8FfQWAALg0TmACSg8q3CSDaoCtNMDSZ43XwSPVPni0hjc1NFuNA
	 egUaqxKRfkc1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0907C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174873599362.17825.2403598113880251642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a283237ae151ff3e8fa0f1221d7abade1c08d020047a1cea2923325fd97d73cb
Date: Sat, 31 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748735993
