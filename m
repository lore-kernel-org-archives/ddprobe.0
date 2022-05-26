Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1122569
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 22:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653604920;
	h=To:Subject:From:Message-Id:Date;
	bh=9sfLJPJCSt6KpuNU7C5hVQEEcMollhOo5eyT+wuUbME=;
	b=VaZnXnGfDcR3dT0/4poW8Jln0ZG+cbWVtMjTHgGyXuV/4UUpitBeaj6DhkA5FRHp
	6hFXE93RUQ2kLtbhFuwYA7FbwTtm0/1zO85sHGZYClvvIfTRq7r6aXV0CCf1f9iKDui
	IhCKawe6bfVHH7i6t+MF89e5hwVDiIvJKTxFfzN0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653604920;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9sfLJPJCSt6KpuNU7C5hVQEEcMollhOo5eyT+wuUbME=;
	b=QQJpGF3CKdwJdZjAES/ROuEF+gSFHuTRXiezuRfGyUrsZuhI5GZ1IX677RGAql/g
	XfF0P+z6Yh1yRxYz9FkzaNxNqxaGyFm8epZyesk51rqXox7l49W7zmNvfKwSl0lot8K
	ZXVJIERQteNHisYPg0qVcj0zurftCSbBbaGpuZeI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810288a8b8-9d4cebb3-0a9a-4f45-be4a-6228b5e348ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 657681ea98631a0acde2b6d0fec87cdd97750fe9f9c0f39eea6a389554f88398
Date: Thu, 26 May 2022 22:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653604919
