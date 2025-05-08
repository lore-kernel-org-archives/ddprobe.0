Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B742135D0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746705594; cv=none; b=kSRNn/Uoa9GR9EO/9U0dALZ/1dWEadixh8DMizYt/hZlfuP5D2+Onx248kdrtC3l71ZrQc8SdvAf5YKMp0/xtuMXemupxvj9eqKL/ei7aFPFBy42Q2b9+soLbqTmB7aPfDl/atN2YO3JE5L3lHQCQ8MBdHNB1wrUTutKuc/jZy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746705594; c=relaxed/simple;
	bh=/R+CLkXArlK9Ikz/3Abhkq0KmruLi9Vg4Vce0Ffs1H4=;
	h=To:Subject:From:Message-Id:Date; b=BBgDMIzYqHRQuQF2Pqo6VIxwfboWh1c9kjbH9l5K2dnoaLqPKBifI8yRMrw5q/pSsVg5aCQlBk7/aWxRZWinQh5ir3Sub/KWzZICtE6zHd0oX5fNeaoqdaMNj19o+cXQYJzr3Y6wammwVnSMVCj/czLockF1bGiNAjevUTZr5YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0u7JYa/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0u7JYa/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB13C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746705593;
	bh=/R+CLkXArlK9Ikz/3Abhkq0KmruLi9Vg4Vce0Ffs1H4=;
	h=To:Subject:From:Date:From;
	b=W0u7JYa/9vPadkkGc4/7hn4DTQ5WQjll5yHbvow/otqJkc957DDlqwCz+ssAn5MU2
	 KCzhES6i5DCzb4k2j10TKVjxDKuznDAVt2xNOBPrmbYoSD46VyWV0ohxgGCsypZqnQ
	 FdeagUhvj/c0h/GnOCOHrF/emnR0yacQP9GzGvmfPpJ3G9WdTvjsRNSna25GxJo1Zn
	 l123/V+VOFId4vKj+Mev5Lc64vcg2/uiUw28ovkmeJpEn5PoUelanQvxovoXm5Q+q6
	 24B6+XI2bn2VCfcTB20Nalsv+4afcBKjF3JQVBPGTEdKY3akt61H0oTS2vu4YQ7vWM
	 s/7AA4E1qS8cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DED3C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174670559357.4392.14999983653211131283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd3e791258427e5e9b8d935c3c929441a28a9cb826bb84968ca7dcafe67ab12d
Date: Thu, 08 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746705593
