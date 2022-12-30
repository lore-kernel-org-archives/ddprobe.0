Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4BA1105
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9013DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672368087;
	bh=T5hQm0DgvE1uzFLVBFfqyKue//fb15lxXkjTalcDwPU=;
	h=To:Subject:From:Date:From;
	b=HzUIZB4Yum8QzHiHAouvFS9c30ofCdfFoYhghpZz6k6UiCaLK/ARjU/gCdVUNOdvg
	 5a/i3Wgr3YmsqsNnjG69qJD1qan2XvMD8MHQPGqk4fv71kOaPf86fhBdDQ+DAxx97v
	 JA3CtLqvfBjVOT5BdYPtf/c2Ey+l5hIgzNpDru81Maq33oKc9rNm/Fl9DoLpq6EPbV
	 YZunn2Jn4Ivlm6JVBgCFbzQZOU/hpYtxGp0E1JLwdeqYaYZnqeOEarBgHdkyEZojXB
	 xan8G0qUlQ/xcyIP9iEZ/dwIQnwoUN/pU10O4sL6HK5tB5T0+AndEFNUTjqigEpPkO
	 gGvZFHvwTypBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 735BFC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167236808744.12380.5957749553240738340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 541e4d33ddc3cd7ae2268b319ba37a783f230396c06c5307682817b03532ba23
Date: Fri, 30 Dec 2022 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672368087
