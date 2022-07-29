Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A58538A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659132652;
	h=To:Subject:From:Message-Id:Date;
	bh=1nlvnqVLyL3yggEF+hZZFxpaRQFlNHvWQrc10U2OkXY=;
	b=L/Uxe4r/7/jVWr7+DiWDCvWCOAQZ5HnJ8o90ZvpwN2JWrdRSXtZPq9BLfciLCfSB
	/pGaJkhNNRCnomIuTbokWajjoTthSoANz38EHg1eBU5hq5xuD9zfx5kTH/z6VUThXo9
	dWoYZQRpj2jvMM6t5u959+qf/IyZy42BfEeZcfWI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659132652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1nlvnqVLyL3yggEF+hZZFxpaRQFlNHvWQrc10U2OkXY=;
	b=dSgkka9THaKtRttrwIPO63bGgastdgvoUDQ8tJbKK3dqceKjSr2+Svo1BxrI6+8g
	yUMa7SOnKis2BaHn+1kOWaA6h+8GMbA7u6raC64FiWgx+V7qgfuGTM3XWoW5s5ythau
	ek4sM3YvDQ5srm4oZ83scLJPp3rXJhq9cTb6mlCk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824c032c16-b381c8d5-9d8e-44d9-ae3f-78061de2657f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99d284911f416365820e3c3fd7b57194c85cecc900a04d9a0111377cb2e6aea4
Date: Fri, 29 Jul 2022 22:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659132652
