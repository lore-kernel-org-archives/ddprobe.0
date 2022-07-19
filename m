Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224365393
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658259412;
	h=To:Subject:From:Message-Id:Date;
	bh=YKr8D182x8o3AnvpU+hAG1oLQaZysaz5D2aD0q53ILw=;
	b=jQ7M3VdB+MRe3sepLV3WXoEU8upBIc7veiA/MwOinnzl3FXp3LQ9he62HaQKtwSG
	juj8EEHJJQ2BdLbgiK+FX007Dc3Zc/fw+VX/0SLCRF0BrTfi+6u/mBIJRBYvKfMm+oZ
	FDcsuvP6ffrBX48lsUUV+N40oqUNEI3DDwF7TNLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658259412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YKr8D182x8o3AnvpU+hAG1oLQaZysaz5D2aD0q53ILw=;
	b=bFWX0eIcZwKj/G/6uj2c0Uf4yVbMjuEBcXixzgWo9ERn6tY89t4Hvu40DF1ISS5r
	bJp+thTNnLRdoey4K9YOjWTh5/hPWZx2Pe9DGdvsAkFa1vrUq3h5JQ3JtuiQoL11paE
	pNUGTIdf+ScEy1dt9TeWQmjZu9nV6fgqFFCtJ8f0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018217f6953f-ad20d4c5-1e23-4cbf-a6fe-fa7ffbbfb680-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd8b69814e6286d1829f1e09c83131e4a9d5623dde67785133fbcc36b4e31292
Date: Tue, 19 Jul 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658259412
