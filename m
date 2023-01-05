Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD38133D0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CAE2C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672921887;
	bh=Y84SF0VYet1l9cteHL1ZA3UlGVdUoH7hnH9b/fFvpoM=;
	h=To:Subject:From:Date:From;
	b=Xf+5Xb0lInoqdLBwGjw1DvHS+mr+Gy+vn8xZU0dxEOD09elaTygAVuk5gydM5+BTY
	 uM2npuPCzZOJggoxV9MhyJrUNOmVteBw+UWeq8H1hsD7QZJ9C2kVA45wIbhGNE8uwW
	 kI9wDlJunP0p3Bz8vsRIk25i883vhtnh0/ZApceB6HXVhR3/F2z5BgBsLGUlRhEQNw
	 0Fj2po9p+hWcMoCwHw8X5UzoIJRQeuRAsXWu0/Def+dc8tBa5JUasBzP1wwgTrBmjE
	 JUZjhj5wlm/8KP10XLFpqSM+gl0dheAUjOXGP7fXSoUkeU10Ffg2xYCL1SNY7ny8+7
	 88SaFFVZPs6kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F353C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167292188738.5331.7790826898556009041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da0fbf4cea5ccee94274d04e11a533e6f92b98cc5b0c5c3f7f48df9be153bc71
Date: Thu, 05 Jan 2023 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672921887
