Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EFE17EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 09:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B02C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 09:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677403565;
	bh=V6dVYGM7IYRyD6r7b+k6hlvXSzTGpSFeAX5sAn9S6SM=;
	h=To:Subject:From:Date:From;
	b=NRlAwrfEdaRUHJcEhux/6w3Y0QYslb3cfXWGrvRVdHuG/W01Il0u/bjWeH9A6fOOG
	 iBl/tFKYmhr+7pr7QcqrRb2PSGGLN8dFEZUg9K7RW/ElclGsWmP8raH21oNOKF7uy1
	 0WrIO3kob0Wr+WfPNTYczyIDz4xItkA+jO03z3yTuSuuXsw+oqBaMIXtw2Pj9lz2c/
	 d7XuV9t1Wk/iicdEciYa0SwloVGKnbM182ckhcxo3H+r/201vx/P5mh7fZHRk5dlcP
	 NzxY8fB7MNT8iacCiMZJuvFLJ7Z3ggAggePKWEPY1AUiUxC8H5XZIG2ZspNZhYKU96
	 GHwvAghH6MhGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4FFC64ED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 09:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167740356573.4146.7377707706292562998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2eab9d015b19f3589bf3b1a17f8e05a28c74cb630d9561cba4bdd28f71ecc2b
Date: Sun, 26 Feb 2023 09:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677403565
