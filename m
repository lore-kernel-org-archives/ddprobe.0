Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DD91FD8
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646573185;
	h=To:Subject:From:Message-Id:Date;
	bh=Bd3DjscaNWgnPF5qeO6MPFjh0dleq4YEKuuBZDIbzmk=;
	b=j+vAri1lUb72+BI2XAXwdH0IQMEjCG/xivOtQ0OjBDRd7VaXhlehDKwIPmstcAQc
	ATgO2jJZbkWZpRBXLaO6nyffrCYb2ESn82+N2pgoFSXXeXP/8UfgaXTlOHBVbMxOP4X
	ubU05I6sGDKORCLFh578M7lqJOoCuuPzGacESLZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646573185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bd3DjscaNWgnPF5qeO6MPFjh0dleq4YEKuuBZDIbzmk=;
	b=E5vJBoDT2tWY7lSgt+2Z37d2o0WO+klwFmZ+fYG2A3EmmeznwhKFTflsLSAvKqQC
	/2hjC6m/y0CEZEgwz/85oFUPndpwUoUvVnlmHilBdfHnTFeVu2rgZn/eC1evtQnwR9F
	UFzCTisVdGWjCTJz0hP7Ez4fmSXQr+Wg+sSE0h3c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5f68e6f9-02c2caeb-3179-4644-be7d-b6c2481fa6b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7bf331e4636e498897ed7846ee6200de19dfce064e099298d7941e9a6b9574b
Date: Sun, 6 Mar 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646573184
