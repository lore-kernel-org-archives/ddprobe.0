Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3843A8C9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705920496; cv=none; b=kaxwIqYt7YFrVwFbHZwKa01FtaLKxs5O64aYSHpBoX+irQ8LzA6JdbokLffOOOCRUMsfhI0V6uFFUC/ANU7iFfHMXq4/nYXlzt1QkDGKBxezKOLJG41+jyTN5P6Hz/I9aeuWPuEBIQwkiLHs8/NHrpTNsds1/T94dtARaP+q+i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705920496; c=relaxed/simple;
	bh=8HiYx0B1xPS81pRRRXvwRN9yp3yWkl9BHzyydSifMEw=;
	h=To:Subject:From:Message-Id:Date; b=Ou5iSek2PhGUu2zdvqDeSMvibCqWEUen6GZ61yCw9BX1qXqbb8Vp6pgo0UILLf8h5KgBHotoap7wepLVhlfEQsJqgmxBFIBa2mjFe8M8nQDIQi9GYvOGg9sMd+IqD4skTna2cAP36TDF4YAhQWvldBs0/2rXTM7OzRA/R3j/XQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdTe2ucV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdTe2ucV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D43C433C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705920496;
	bh=8HiYx0B1xPS81pRRRXvwRN9yp3yWkl9BHzyydSifMEw=;
	h=To:Subject:From:Date:From;
	b=OdTe2ucVtKSx2Fdl2mhC7FnKqLcSqMJLqijKylGjvYzTdlbmQmmdDW9E2+JLEUB66
	 lAIGvoMNxmngt4vHbgw07qK2RkKpy7PZJxET52/+85XjjKy8+DoD9SUeOMrO0uCwyC
	 f4d6wIkDjrofGOuHsIsX/4h4yqmMUFE3Jmvvs0LJz6NaSiDSBfkMDLP/lhF1WtH2W4
	 rMpe9qtccwFY8RPt/10JX0THUsjETGRMCpZ7R8xAqGBqHjXRwipU5tI3QHZqPbH2Fh
	 4SzW9fMLrrSqL0nx755IJBkfjF+l1URJPtHTnhSdlGUuqZR0LqnoiKOAIgdZGezvsp
	 nqf0eV1sMOtyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ECA5C47DAF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170592049637.29953.17485246273711430575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd62d148736d4662203f2555510df93caa3ffaa194c0ee053ed8544ce065bd46
Date: Mon, 22 Jan 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705920496
