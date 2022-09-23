Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F852F23
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B422C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663957853;
	bh=OLb/+tWWp9tsCynIXYZTFOw/0l5+gwqmM77N5HicYhw=;
	h=To:Subject:From:Date:From;
	b=ejBmCuu3gb05y+DO+W6uIHuRZItHzkZIuySjRYayx+rz3FgeJXX58AJTTaA51na7x
	 j6OQCyDaSeqRnnnZS31m5i1qgazCqIoLI5wUJFSx8ebX4zg6+sffzb+9mTPhe/zIJI
	 V8/W+9TZSAv0JZmw0OF9xRMPAeUDFLk4gFurZnr3oTRUhY0cT6KXc9qKG9TTZGzqa4
	 PM6UKiayKQgNYyoJuvPPob1YS74paAPhBYIsSlvRzpxmDVaQ1hh1ANDvba5siv8Ky0
	 uIP2ZQzI43++m4fhI8wYPckDbqlnuAALhrp7qkyNRZYBHmnxyzfszRQbqciXNAPZe3
	 Nj15SId+VwO3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A97C07E9D
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166395785332.29930.495448354991144514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a08ab179181441805049520b375a53fe7ae8c46021ed9ef90254fccf22ef7dc
Date: Fri, 23 Sep 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663957853
