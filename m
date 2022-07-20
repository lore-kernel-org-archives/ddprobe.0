Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2479A4405
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 11:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658315212;
	h=To:Subject:From:Message-Id:Date;
	bh=lnpmDOZQALin2eeb9py//Wl2Jlua51HPQEBLOvzcosc=;
	b=GGVKaNtR0McERFbJl5WZ4kf3l90dFn95w/U94+cQhEWPrNfcluc+fXsqdC1vqGvw
	k7dM/gCmbbihoeGziEAJy1pRZjmmU7A4t2dDdAjHB5GZ+8u0vJxKQuf8wV5aI5mIaRT
	FqyQk2ur843bJf2BVHX+NqxvnoXLqCNmBtkOrdkA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658315212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lnpmDOZQALin2eeb9py//Wl2Jlua51HPQEBLOvzcosc=;
	b=DFcuA/NZWItlAM5KzjRbrtOVLI+9LJJKEjqA3hRPIqkMgp1to2Y32uur9JrgbOQS
	sjTlkHqCm2bpX53y7G3wTiAD+EEPAzyuc0laq3qK9u45VihfN8qMOXbFCxBlzPGELtm
	FkdBcnH8Xkp0ZhC+aM1faLLvGlqvegAu/syrUqcU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821b4a0600-450c1d4a-1239-4cb1-88c9-940158c6174b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff9d942ba9ef7aee246961d3d55b8de8b18ca085781a1271ecd84aea0fa6e703
Date: Wed, 20 Jul 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658315212
