Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B83636C
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660266652;
	h=To:Subject:From:Message-Id:Date;
	bh=yJuE1gh6UhVF6NR1Nr1d/iY0+h5BJ14cIA3nmLI5/co=;
	b=QLMAokQhV0PnsBCwG5AYPyJNkx+9rSijwcN+HQhFvaBtrpRZ4CsuhuLd58EUhjFo
	1pmo7Bmk2HVJQnZvx4FbnfsaQgXTk7hWEiVLOx/Fm1rEqGsqbYSdO21oKpyigHXXLd+
	6nBu14Y28LydSD0VVoQ0At0ExqBZkwmSFKKjVH50=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660266652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yJuE1gh6UhVF6NR1Nr1d/iY0+h5BJ14cIA3nmLI5/co=;
	b=S0Y7klutPmUbZ3YqAWdXJc8jcqhAfx9ks5PLdKiHcy6Q+hCDMUN1EHkepfD69/dR
	M6FK3t1NrO6ZVGijtszCb6T23Dxv15qvmyppe8RXCFRjVurGdXmKZNx4x/mSWkz3LLQ
	7ssQpCpcyLO703LUcS8vrzmBWNdObJ7PrlmmN4aE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828f9aa3d4-462fcccf-5f0b-4176-a5fc-ed860a38d943-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 975427c4b701e6f63749fcc42a6123cacd11f2f77b17cbac8a32eaea2aa899d5
Date: Fri, 12 Aug 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660266652
