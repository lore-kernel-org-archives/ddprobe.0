Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8887B
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 02:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649732098;
	h=To:Subject:From:Message-Id:Date;
	bh=1dPUzbe+HbQAkLqdVbXUwKb38F8b+fe0/jGHR6khWfY=;
	b=RRRVorZVuScoykVSM9e0Zu2Kl0uADv5Y4+M07oBAvOb1ei3fcgGs7SHyO468r+Me
	mAFdAKRCL4b2mvsT4ZF1QfBpcgocF2L4ZP6SMfMr0x725GLopXSESvZeR+KpqdT+zyw
	OKU7ClcvTWuBabcDIPacghgyJUeHIyObRgTRBhvM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649732098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1dPUzbe+HbQAkLqdVbXUwKb38F8b+fe0/jGHR6khWfY=;
	b=S+1XA2tXRhwCOPpDVWrhuqMv5wk4N1VcYwPV3KI7XOvD8Q948ksNgKGi+4zp1/bO
	/WHHu7mQamxyCU8rXZG8zMmJr27WYYoHHq9PJkesQ5ijEvRgRvs0ZAv1dKNRp7xnxZb
	AG2EvpjCTV0dM33ciOb2eUa6mjMsqnmcOzU+ddWU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801bb218eb-68451f30-e3ae-4aa7-ad10-0cf76d45c9f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a519145f163957338f80242454fdf6b5f1d80a6acea241cf7141712da983fb5
Date: Tue, 12 Apr 2022 02:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649732098
