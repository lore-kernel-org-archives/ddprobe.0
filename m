Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA75BA3F
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746972594; cv=none; b=tJbTuBc5TgLigIWvJbwk8rqqdNUabUwwj8aLdjP94K2ldkWCKzMT1BX5SOwAo2kQe8JkJujY0aamUE4sD9JmfM1XoqVle3FRfv+DtXj8eRQVRco4WR8RauWLTUpJC4hsEQMmuhOm+vSD6XfKrxzCCg8AtW6lTorgBEdJI6dVhSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746972594; c=relaxed/simple;
	bh=antp1tnKqdz112U24UB2VMRYm4ug8sSY1Bm+oXbf7Y0=;
	h=To:Subject:From:Message-Id:Date; b=i3v5kR5vlXeGRLQYrrjeoRLYChiYq2vNL5NtTb4gaQg+QIhGUTm7JcgdjAyE4Vwu1BZuWkBVGxFTg3fQ/WjjOp9NJWqLT38YBOjRy/Yv9rdS9dtiyrw8jP7QFuc727HKGwe1SYgtKbl/CzfS6Gnh4/+Z+ZLbiyZI7RQkWCbl5gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npWCST1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npWCST1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ED0C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746972593;
	bh=antp1tnKqdz112U24UB2VMRYm4ug8sSY1Bm+oXbf7Y0=;
	h=To:Subject:From:Date:From;
	b=npWCST1AL431PR9NksZz9y5DvMN6AYQjqMlfBCY4n415UmndUqLtKhl4hP1OTK6JG
	 T1adBxAi0hADgFo023fTJ9LOT3o9NrJdRZHFz+C3jdUGMxlmPCaoV36+34+Pd5wZ0V
	 TlTRn30SZqMhp1sOADEyO4FfuLIvXGPAatQOiz/MckMkYpER30TVdaoK5/Q+4aP7eV
	 X/V5SOnGzoC4XrWLgkKKaQ/gZNbqAbl4Y7XY2hllquuON+SGzfQtWq+86uT4xGYaYH
	 nmM3zKcUaJTY7slRuZYXyjsgCFvnpZ3pwKAc0DIpjP0TsOywT/ZWK3oLrnp5bciyRh
	 0IGAXoiFf5Cow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA73C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174697259357.14770.2708773425823425771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ecf6dbed972c2f0cc640054ec02c70bcff1fbfd1149d37ee154a78416035e81
Date: Sun, 11 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746972593
