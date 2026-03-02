Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC5730DD1B
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772482494; cv=none; b=p+Q+Yhyd8ugO4FLo9kO7Y36xO2grzlLI/aCBR/SoG4FOMiPLxc/bH4K6hpYcjum6MlbsP9gddLngpfBqJG9BUDinFedOAzn/Xw6xi7omRMqMTl37Fo0rJa9juKZvSVd2enwOKBu91tsBwj/xuqSi4/DZNX6IJZcnGWGiWBARuAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772482494; c=relaxed/simple;
	bh=SXY85rqO6ZRSzzAlcbFiiGDtHaXhCJ3lKtx25bCLwUI=;
	h=To:Subject:From:Message-Id:Date; b=shvuBY9kbgdudfpzSLNf0CR+I0prOvcW6wqDTzwiX9imo8bhDoFe72dZuPULO2aVbNve9XIqFLV4buY/TJgN5bwcPT5oKHULkE0g0uEb3uQcJLdmAUqXqlwsVMl1Pmz9yctI/cCtoQ8F46ftHFMx09YK+z9AQXxXyTf82fwhSJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cfv5NsD1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cfv5NsD1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C413CC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772482493;
	bh=SXY85rqO6ZRSzzAlcbFiiGDtHaXhCJ3lKtx25bCLwUI=;
	h=To:Subject:From:Date:From;
	b=Cfv5NsD1uD9sta2/UWQdbt3B6YSjPAYpyZzBNydwou+enx+EfToH7C0ekPjD/9LDG
	 KEW+Ir+fOtbjCy8bF9+rUs7kkmRuH4vWeSouORN6MGUw8rqWQDUw4/NFJ2ZilJFVqp
	 aDVQWmsIHt4ZVsOA2L/nbIOfqVV4/EnGzydHKj131aLJCXhcBvRhQ5mLjz9n5Aj3KW
	 SxMKU/erFsKS0q4WpN4ohoHSDySx3opqMfBQBJxwTAcSDGeqZwMMfofBaSLYEr7YA0
	 Zm/tCvmnHNJMFFxSF3K+gsdbLq6Hs6JQve4AG6YkCRgHsNBKG/bprl1vPZ1zbrUefc
	 s4Q5eIw6vzsUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4C7EB362C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177248249369.30600.13036049655397144128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6ea70d53dbe959576c84635aefe0468807470e093c27aaae7c38d19bdcdd68
Date: Mon, 02 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772482493
