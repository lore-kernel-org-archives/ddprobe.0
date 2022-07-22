Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279DA15A8
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 12:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658494612;
	h=To:Subject:From:Message-Id:Date;
	bh=rBigRylY3PmuTaqxk16x8j3yCTWSBRXQ6djGjM75Pj4=;
	b=WQqdo9zXy2fs/gN9ZfRh/BeAe1/sFuBiuY4ScdxLl09ja2LMKZDhXMdWu/qfNk6F
	pd8zBV1uW/bBTEgyn3iq+fm0JTCdNC5gyuYk1U5bNYNeKbzo/8QKlFYi2yBHwh3dcWr
	j+VQR0N3Hy0N3jnnFnKf+U2pw1gdbDxRmn1PHm0I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658494612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rBigRylY3PmuTaqxk16x8j3yCTWSBRXQ6djGjM75Pj4=;
	b=al4Znb4VmsPI8ibisZkm3cWPDb1nA+6S2aPtEQddhorNH0idBmtYmpJLT7a6VnId
	pAsR7vF6JezcFokuxt8AqqX8/6X7UwM00m2RedhLQsBc5SAx9x+RaBLnsbsLWA/Rb2R
	cAs28AkIIv3Q4UsaBNTHUS6MYH0OQm4UZlh/m0wI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018225fb7314-604461b2-a302-4fa7-a46c-e7ccb6497b18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c95b59a7ffa4121665a43377dd2922855d07d04b3fd44118f244b70ffce3da64
Date: Fri, 22 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658494612
