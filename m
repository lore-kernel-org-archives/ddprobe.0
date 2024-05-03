Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAB414A601
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 10:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714730543; cv=none; b=j/jCDMSUqe0T/WVa2EnBbA9BN/5SpjS5fv4AM/FkpNSCH9plKf1qe0q4yLvz8Vuza0fGlnD1W/CNvp3klgBQqwJNvKNJgkGcewx0T2PRT9KCAzp8pqFncI7anL830+a78yFRblsasP1AiJ0NUWLmtdD7+UpKQYqgNF0VgW2z9+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714730543; c=relaxed/simple;
	bh=0nExBU0oQEtBS4CsY9PckIQmSc9F/w5iPDJ1FwJis38=;
	h=To:Subject:From:Message-Id:Date; b=i9Nx8g1Fdq5jWL8/8rIIyTsKDDIYHM1L+Pw9ATZhKDiRkSHqOH2KCAVyZTXF+wmrjqySBe+9ek+fN2dhYcswsq41Ar7jVwW90c69AXLR8+J5nKyiTYWi30PgGnJtl3NSd0VgcoTqQLqd7otEwDs/8jGwy7nKZQBu0lqHWewfQ6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Een+DrZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Een+DrZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CB2C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 10:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714730542;
	bh=0nExBU0oQEtBS4CsY9PckIQmSc9F/w5iPDJ1FwJis38=;
	h=To:Subject:From:Date:From;
	b=Een+DrZQuB+O4OWQ+/EPS67PdT6i6YD47B1qcWM/bLEc74VvAn4C4tfe9rXCCAYco
	 Umpf24NJbBEDTt3ti+1ML0/IH15f+L85vMmWBnfo1EpIV6q77SK9w1ifMC/4TwiXwe
	 YK6P3Im1Ezx0lTXql//M/Pk44rGojmxQ0uayhogTdW8zRsNSJUET15+Tuv5suUrWZs
	 Ix7nRnpZus4Kp7cmyabaCKSsLK+1ua5lSObvQsetBzlKo2gI8HFfSZmFOHJO0HXdBt
	 fZ3caiSp+HZio6Gvl0F4FfXpZkayW4ao1E4R/MxANFXO28Xs+nCPpD8RPrmkac6+1q
	 pMtt44Jw+FoAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D20C10F16
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 10:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171473054278.9130.5625505966232526871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee40792bd36ce97fa5395da4f04892174ccb4c1c41979b18c7fef1b0e186ef6
Date: Fri, 03 May 2024 10:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714730542
