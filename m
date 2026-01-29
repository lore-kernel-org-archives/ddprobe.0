Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15192773FF
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769678634; cv=none; b=CtquHwm/Yyc67rV0yV610qcfI6E8s3LdUAi6a+LWjzRyRnVi1E/uNOHtRv49qumld3Bf4xHZxLvU8DzTWZKwcF39TUOWatxlvaMHDjf1E+OBxhYJvJSGJNwAMezArEUEDQs+fB/erX7FcDJ+VjNhouDg3wTNott0i9gwD67mUg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769678634; c=relaxed/simple;
	bh=JNLRryzFZZBp80wnAQFza6HtJ/scHhlhzISGzwAX5Gg=;
	h=To:Subject:From:Message-Id:Date; b=i4JqPaMC5DbCRUjfnBxWRVZYk2m6InYf7UkLE1xE414FQGR2vagZZhOPu/8TYqWHIdVqrkBcMsAxVShwZavJd1B5TVe9gLAnkiLl/9I1CaKiiCgeTlh+zSCVPyU88McddR6DSBrvwSmTD2f+c8urCCnLCNUx5qb3wtjpgP2ekKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqVU+QIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqVU+QIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDF4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769678633;
	bh=JNLRryzFZZBp80wnAQFza6HtJ/scHhlhzISGzwAX5Gg=;
	h=To:Subject:From:Date:From;
	b=KqVU+QIlWYxPiSmmF4PBiPBYQHvwnrITSM5GvHqrFiggsu5dOruefwd+UrZVrqQPC
	 GxW5UHKTFO2XWQgPcKwTpoMXQrDBbHtKqovZZ7it9Q1ykQ5oGW/IMJZjiBfQOd21vP
	 9ZhdRjiZFAzgtb04/taiqr5nySdV3FzBhK3J8wmrjeosTyRbBfz4FeLJuOcclXMjvW
	 rS2SXdduijGoAtDJ6WRDLwh/MXnmXoIBlvibesJjask3o8O3rMxzN2iSC5vPRu3IfM
	 6GsSCTN5I4TcYSXkl+N0GhQlO4KvcrMJCgzD6nTAwp7iv8nVvP+7tgEQ+jWJq5nRN3
	 MMzBBeoE4q7xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F61BD358E0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176967863357.10457.9320973825639642699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b918b5afdec7228e429169a9ed692b5bd17a825fb9b62268d650da035732648b
Date: Thu, 29 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769678633
