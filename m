Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A03738DA
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645091484;
	h=To:Subject:From:Message-Id:Date;
	bh=N1Yh65fEf3dNvOJXQShd8wQZUjByW7Ya7VqHvBqTpz0=;
	b=FXjcOwvhlN00GJMr5ZDt994Jg75haEocYzgjfczym/d4HvsAd2/XDH/6WLcnHg+G
	3ZmhVreys2Pgm9GZmeG/YybG+QCViNW0LwBLsfdhTfLyL+VwyOsLTl7wYT427CZElYE
	wG35xt+uC1E2qNCg6cNTrmAgucvirP+6384/2E9U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645091484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N1Yh65fEf3dNvOJXQShd8wQZUjByW7Ya7VqHvBqTpz0=;
	b=gnsFpVsYH3nXTXa3vc5iH2AbJ0H2NkkCbkEaJUjWSthq5F0ZDoouHQ8udnD+UA4I
	vr/KFsaR/MFGPAnfZdrFBddcGL8pC/2pJo6kOD6OT6qXg7VcRb8Y/Iz2M4bLKU5S+iw
	XmZb2FaS+XAvGcEvLLKzuBns4UClK5JeKX2XObpg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0717f472-b41b2549-7a07-4ec0-8bc2-5869c400d15c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ab93f1ff131e3ae553a93d62d0106df55297b83fcc50fa942cca4ea702efdd7
Date: Thu, 17 Feb 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645091484
