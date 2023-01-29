Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A0117F1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 11:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A1CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 11:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674990785;
	bh=f9hUXfh6c/oWrCEfINieuNT8eCmtMjjWsLrZ56ne6ME=;
	h=To:Subject:From:Date:From;
	b=RcQFaLIJfl9sztk2+kcyKBx8dILQjYOIUJdsy5qSAf5br8u1q/6ThYrubL+cH0TMB
	 V5NeAUt4Ba8bsSs7LJgfPXHP5z11Tj3XkgsUZwb56T+pGA5dS0NgueHYKU/Yqhw1sT
	 t28nik6Uzct852vSuq4rh1ZpSvpbw/zuNgtLW52qmwalBhtWmPGtIUgOzff87IsMhR
	 Uhi/BZ4phl80A/GjfkDKPSoKU0gnNnD7pur8xgDKgCZvVaCM87O4RxZ0AzNpWUbVcY
	 b9spDz9AVFzKIRB0QSGoIm4HkQo4DOG6PJmslIKGp9LiHfP8CE+psn65lRDuWYc8HV
	 MXG9lYNwyht2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BFCC61D97
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 11:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167499078572.24905.9836982457015870578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 724a5ba318a86188838cb3f80dd3f79350c85a3a27f40dd8fd23e8a00cbd3e12
Date: Sun, 29 Jan 2023 11:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674990785
