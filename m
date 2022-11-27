Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC86A8491
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C0BC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669584654;
	bh=SUY1H4Y5b0Wo6KYGQUCLn/7+m33gJQh34OPR7hw2bTs=;
	h=To:Subject:From:Date:From;
	b=CuMlf1s6+6kqiyqY6GQUbHIYKbaZo1Rou/6P9qSZ96nZinh6bXHGDASK5j9HKWgaE
	 BOs3GcH6E5GZNusi7hzKyWx4q7iB9/12dpn/s98Nxvp1thX38qZYssm0YwK/jWALrX
	 mzzdWwY8aicRNmwyvOM48+vf8oXDa+axjbbpWdhgdyCxff3DwFB1gE6FMXP06D2wjD
	 mM01zE+MXqsIC+JFrEC0FaeOBsicdblzDVqQtF7a8QmIwP7txL40B4ir/RAhX0pmL3
	 tHKQsRajvuzqf3dhF41DnWKudGMk8sJUPtxIs8B70UNhlc7VaZEsbEp2fnL9l+dryr
	 CThCIK169Hh8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 564DCC4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166958465434.10133.8676096031635567962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7952894d520772d0009da016048ddc1d2f7d9a264a3420ef7c0da8eb03d43665
Date: Sun, 27 Nov 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669584654
