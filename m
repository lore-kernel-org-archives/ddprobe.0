Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA727B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 15:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655652359;
	h=To:Subject:From:Message-Id:Date;
	bh=BaLJN0Fx2FqaAvxZSqiWsXib6QKvG+JQSrVfNy+nzjU=;
	b=hcJS4eJCYTJNPRh9DYk3IxXYpAaJxv91LuIV4hAAR+dbzATIaGUEVotqkTFCKosV
	GotrH8eXCI/1ihKYBl2RekWemPMn4xqhsp0QMEe4NoQOjL2xAUTVuzESGI25AiaZoYn
	lVn+p2Zxs8Jnu/Tzna5INqa/qHpsQQZ+o0IFS/qc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655652359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BaLJN0Fx2FqaAvxZSqiWsXib6QKvG+JQSrVfNy+nzjU=;
	b=PR9mPOQn/MVBZTsBu8ZKno3/YEH6cawV3rM2mbjGks5cKSawdqnNMjeZvpv/0TRr
	mggN0L2Wt17IfDJ46bUEEjoB5BDVNVlQHYXgA4OKcoF9Fq15VClfNBDPODIbzi3BNaS
	/XwgbrpyLmEi8kpIY1tYPKKFZUPhKxWKBlHOcFI0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817c921c5c-750a463b-8c1c-428a-a7e8-ec12b8e12c54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86ffb8e9cbeebf2c95a7a5e6a2b9231a3ec9060fb814e83e2d9caefc116ff8c8
Date: Sun, 19 Jun 2022 15:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655652359
