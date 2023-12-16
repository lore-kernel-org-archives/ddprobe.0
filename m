Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5D815E94
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPWLixFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7693EC433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702723696;
	bh=sHSdnC7Gm7mlaGyJ2Mt34Q9GSPPl7RP4o0dpHyVXfXk=;
	h=To:Subject:From:Date:From;
	b=FPWLixFyxvtCpYD8CXw0slGGYW6gvfNwnJB0LCdukTBYqLlQmzyqU3x3PUsJheMhT
	 hEo4JK3kvbdLxoVX1/d+9xfeA5TgamEThXCZC6yGyE2YnWn3nMLyo6zrA3ayC/ZAKm
	 RgJulP7Ne7IsmoKD59d6obUGpOkLw+s5mox17a7QedAQ+EtSf93/eRHvTWkWsTkzzO
	 gdFWk7Bwl49vJzzVSNnkoU+kDfEx1uvYtICVnIZTtnqmDr3zNkWWIBJguwrU8OX/2b
	 P2zdD0/T4kNVlKRt02GzAw3MK7RMU0hI5SYmZS4ztTUjvxuYc0K01EpkaY/O0mt/5c
	 R/ziSICewbtvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B36AC46CCD
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170272369636.25293.10900257648327739925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b95d8c0cb456665effc00bb8ac426fbd7460ae8ab3708c1cbadfe7c524c89f7
Date: Sat, 16 Dec 2023 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702723696
