Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB524622
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 03:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647918085;
	h=To:Subject:From:Message-Id:Date;
	bh=Lf/oYDwdYah+18fEuMaNqYZQs8LAsxbIZOOuZO9xd1U=;
	b=gz0ICy13Xn4NlmIjeWJSO9efYVW1L4moiWYxJhtGnbQ5y05kLXkyST8wDPkGlF7E
	a7kedzKNoH+V8AssZnM/lUkFL0jBU+sUfE3Upz64kmcHYDaV8BVTKPD1PsrCwLyDgxu
	ozeG8f4AxWV1F4SZm7ggtUzmga5ytgtTowDuadl0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647918085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lf/oYDwdYah+18fEuMaNqYZQs8LAsxbIZOOuZO9xd1U=;
	b=duwykbmOXAspR1hDZwloz4aM+sJZtIR1SXiLozI1m1bI/P/shilUa5fEnXQR+SMf
	MUpSJjqvOw8zJ3t3ZTUw2DBAfyWaXN6DOiswkBY9cMK7Nku8rkoJicUKMC/gW8sBHol
	lD2lEM4g/Q/2qGQd4uRT/6DtYNsJNUwlv4VLf0Xs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf9272fe-a37c82d1-dc3a-4a97-b60d-623044113ed4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 830326e7b9d446da9e6d8615b9fd265ef4ecc2d76e1a0424718be82e1170b981
Date: Tue, 22 Mar 2022 03:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647918084
