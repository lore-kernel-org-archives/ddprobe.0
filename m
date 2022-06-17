Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BACD33C7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 17:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655487239;
	h=To:Subject:From:Message-Id:Date;
	bh=UJEgM15EZPIVCggM2tGIbEJe7AVzshlmMDa58q/Z/hY=;
	b=ER0yU1f166Dt+zJP8vLdICgiF0WHKuWSSNlEn8XW2KM4YYDJpBCmGKFbBOrDWD9b
	3XccH0c2fgSqAby13sPPfM193fbViQeM4l6mgTvCl43z5/F1YyoJtSkvRIivCmpIB6E
	rEyNPuztdfYiaAxPXHyL7LKJaHxs+fGnrkNgGRFI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655487239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UJEgM15EZPIVCggM2tGIbEJe7AVzshlmMDa58q/Z/hY=;
	b=Dai94UFQyey5aCfV17W9tM8xUVitm6DKBTjYruCyG5z10lOuGoiNk84hyQ04UzdG
	yMwEzHB218EnEmMx/1FqKS5heVQ8SGnSw7AY1a0y/6GgmBXsx5DLSvCfd5qEJ4c1z5W
	vHm7rQwHkJG230pwIzAf8V/R/cNKgZ86HDTahnD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018172ba9468-f1ff457b-aee3-460b-bb54-02af15d9b31e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 878104a5d809d194df9b5de6e5b54d19ac86fba4bd76b44d473d6bb86ab06158
Date: Fri, 17 Jun 2022 17:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655487239
