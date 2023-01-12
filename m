Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34E7378
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E619C433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673492487;
	bh=jfQh5aC4oQDQSFD5cuiqXLYf4rq1nehd1seRe1ydUcU=;
	h=To:Subject:From:Date:From;
	b=hFgGQU41xaocyaMSGGxVII6cTSdkhyusg9StslQimtY8DkHFiGeKJhXKHrkrqmPGG
	 IEOSzsFEKvWgNiymdIEi11aeKFXtFPX06Mev97gvUO4xTynxtNWBUFftfQEmFA0h9m
	 BCJ5RJnzvuyqiZtirQwzFqvsqUBH+CtvXTE2DN12EyTqfWm46o0XbE+HHZcD/C/UTq
	 VuReWAE2tb3MHi5WEWf/C2Ntk7jWpcfhEIXhNxN8fJD3wZGhd2ZUovLduYyfQ6n37K
	 jxl8LdvQSMKInNo0w0/Ea8agDii4Pb0thPRRcM4CBnQMrMh+ZJ4a+gPzVGt8+R9Nm7
	 yoRoNaCGBZQ1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FE92C46467
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167349248743.1800.2827811729547664854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c253e6c7dc8557d7b21c66cfd331a214d177422134de33a6bdd315059a8e9bde
Date: Thu, 12 Jan 2023 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673492487
