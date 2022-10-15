Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B42FE20E0
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 631D8C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665847853;
	bh=zxddcVSpw/9iQQ3ZmLa8fLcTkA1rZFXNChhmtHpgjJ0=;
	h=To:Subject:From:Date:From;
	b=ZEnO4vEeFvd2y86SIxWDfyTcWrYZ4gO6aLH96z7OV9V6lo/mki7dedcvGX+dw+wPZ
	 aQWxdUqXGxzPecEnD1fJXYh5NAbiJlJWzQUmXgIvC0qWht08IPXQb7F8U/Mb4MhwDy
	 AK9d7giTSpWLO4Jb650YHBnMnMFoR2UAehVpLfUxSonvZIhPlDvATNX20ugQVW9a8q
	 gcXHc409J3kiSFCvGFG4Zb9DxYtFwKx8a0Gob8ZfXENjAyQtbjiIHR49Hf0ImoVeUP
	 QaoTn+DlTv0dXiWlpuigOr3h2FbMMK1gBegbmmVUEmyDKyQWctHoxYttlxuIGU/h+F
	 ROJp/aqVaF/PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E470C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166584785331.20144.2338783517363794763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43706558b208b17d4f17bf0515f3c177828f5114eeb2a65e7cf58924e664cfe2
Date: Sat, 15 Oct 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665847853
