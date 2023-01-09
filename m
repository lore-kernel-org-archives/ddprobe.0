Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFFEF23CB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83848C433EF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673247687;
	bh=jppt6cGecuC4xqeRqMDbiOb//bJ33AsULhZo6dWcuTU=;
	h=To:Subject:From:Date:From;
	b=hYGNvxEETEZFNsHMM55uax9SusS6ePanII4GOLManHZQAKF9ULSDtwacIi3+QkAZ4
	 JZV1JdsjMCWXU7jo9b0ceOM/YNLiEtrrjVVONtqp6yJBd0HzmPHa28AcAUlYyJEz6W
	 Bpa83qLkgqTwfwyLT57LT4HkNj7+zk4vCJdsZecYoBcqO3Us8oFHylRVl3F/SXSseA
	 vGTkbIfjS1R3xbOq4JDmLi3DgQnjMl1esUpDzozwexL/LQjtcFJ7DkxrMIof3BmM+b
	 ECt/0v7eeAbyBEKHSOz5+deBwMHB2S6o800l7U33XAyBwwbEyoDxbPpCh6mB+xDNDB
	 cq2JEX2X4kmXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6644BC54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167324768741.8064.6717483662107801398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ca1352087467fd39d6be7d365c49a4f10e357664c598c5e758f5e410446e51
Date: Mon, 09 Jan 2023 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673247687
