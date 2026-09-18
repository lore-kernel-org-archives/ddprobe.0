Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306E341D133
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789774834; cv=none; b=VTY8I2Z8o8zHl23QaevnTnqPL6D0vMXWwGNzIfcXvhtf36UOUzlSLr7HcsPAYjhu1TYAWr+KPJw/Gzw+PGaccAhkF5SYTO53bMMeulOEbWfdWvPaujaCMnL/r1o4bSWkj+wGlSZXuBtBDSgxOJn0lDS6qsIa2L42peTaJWDo/Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789774834; c=relaxed/simple;
	bh=dvGC0djRR6bG3z43G7LpRZ0uU10Lt8qsZtjZiy/0Rr0=;
	h=To:Subject:From:Message-Id:Date; b=Gb/Kqf8N5objBQZO1bCX4qWWyQgx3mshx6oECCMiwmwMpNSoSCgX/1pSIlWC492g2E/nUwf17bbU8FhZHipe/W07VGUz36eXbV0/cibWuRCtZzTNLuO8roZPpuwGIvvhmxOgWQtHMbotmXyO6LK3xX7PrybXXhJhx8txjk8N6a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h73Ci+Nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h73Ci+Nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF88C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789774833;
	bh=dvGC0djRR6bG3z43G7LpRZ0uU10Lt8qsZtjZiy/0Rr0=;
	h=To:Subject:From:Date:From;
	b=h73Ci+NxCvaWdwma0xsUQ9fk3zQJhqfpaix0C4DUMalrWauyiP8nfi5yHtjHXPa5c
	 VIYjLm8fl2kSTfLOexrgLveIwy7ETlAJO0t1NhpAHYhZTDeUexAcHze/hp1LHbd9Lm
	 rCFl4y0jcQ2fcueFFXdo7C43HZpq3eUNq5h1Atksl0/2NLMZcgHvUpEaUCHBcl9PvX
	 lrJi7vr0djmwHiK8WTu6vTlWzqaCVdJLo7Tf2eLcSKL9R5e6YG2sDTSStndVBDuhXj
	 Em5aaajjp26ILzXlAMEd6aOHRdqvylApX+HrOjXJbqMhsdXt1Ewzc48KHw7ULeQpfZ
	 URRlaE3GKffqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1F9C982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178977483368.25291.10273177037902081238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce24d405c02138b3bdd1caf3abc86765466f1375214d08deeedb079fa14eedb8
Date: Fri, 18 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789774833
