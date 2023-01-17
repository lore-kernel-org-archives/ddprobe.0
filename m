Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46AE1FB2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FC3CC433F0
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673941887;
	bh=lPlQMoLZOfSszi+255hPgJf8skkbvwNnj44OFjB58g0=;
	h=To:Subject:From:Date:From;
	b=kpsFa7m/WYyybWEoHdQufj9js8d6fODaOc2nINdJVJTjkZC83HW9CahcowwtK7894
	 nzhpjZI02S5DH/QdwpY+bTzFWBat6ju3KOUX459mQ3HvY0jQ8iNvTVFTkXOvYpVVd8
	 /oUAdB+YyB/Hlrz8QSnZHpyphKLkPqH9R8EA25w4CiCqEpeCa3BhiIpmR6vn2FgN0b
	 1xkK3GDDDuBbth5n5mbU9u7rBc3wGm+q7/IqIeEyYLiCkDZG50tmmtVKYNk4TH5NjN
	 UvG507hZdk+T1T3ThLacdtW6pMmwp+BQr3nZTiuHMCUij7LjsVL/e3lVCMKgVser+t
	 v2nGr3oI6e1Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626BDC63797
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167394188739.22982.8139131879366851073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53865d330c22435e39db403133e8aca1455ac7e426709d3ab91150a8f9bcc277
Date: Tue, 17 Jan 2023 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673941887
