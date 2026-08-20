Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A161D5146
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787230834; cv=none; b=mstuSdx80YVxFasy5Z8yFV40pRcf7X5jBVaZV8U9L45fuEds4CbtHd0ykL/hSZI/Dv1hods6NVZ3xKMgJkjTkbd20w/1fEqKeDJo8FxJrah6LkqXV0/JCvNJ1taxkVaZPF4Ex3BR5WcIOPYS7WcdAKHav8U/2bjXXflerX4z3wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787230834; c=relaxed/simple;
	bh=Nz/ZmV9XVrt/QgU3/OtwFu1nXICqMQMHbOOz16aUbEM=;
	h=To:Subject:From:Message-Id:Date; b=HtFsqUNqQvGL5yBEGBL9Y1vjQxTD0F1g/Nkw3FVYbCIiEluQg3sE7uYcYwMwUfolHjwPAOXpzujqM/umtx3v4IwyyS9f7lr/JxIXxrtxKhQ4u9UXhplJ8fXLSZypaa3N0M1doml2+BKqrLFeZMndlSTbdGn/b6owgs3AM2W7xyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLCho96D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLCho96D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0822C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787230833;
	bh=Nz/ZmV9XVrt/QgU3/OtwFu1nXICqMQMHbOOz16aUbEM=;
	h=To:Subject:From:Date:From;
	b=JLCho96D2SFXo/ksbXFnqYnCKNipdscCNeH6quRRW8VYo3UyXQ5/OpUs3c17ESjTm
	 SjBdvsxT/X4L5cnkHnJEG1NOTYEnQIncwv10pGGrJJXkoTs43G9DKidp2IiyljP26p
	 3KJLtgyJH60Yl5o2Hjl8k8/AXJQUYrD3a3T/DKPXo6GOTBHL6M5fdFm+K8wGg6EkrL
	 TRgEru1d11KzJAVtm7ftQxLFiF5Sj9xzL7HuK+Ah3aTg3+BQA+NYSK7i5QvsBjuNja
	 pIO9fl/lLXzlPG8OqZe9ei6lGbvrfIfVO49iT9J5aLotRUfH/iMkj3qXGab1kHUYzn
	 bCuYJbqhC+4NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACDAC5DF87
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178723083368.1021.3822259822045108948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8e58120ea66c168f3d33d9cc2ee4baeed9feb7dfdfacb14b767581816e5c738
Date: Thu, 20 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787230833
