Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E251856
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 13:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648907758;
	h=To:Subject:From:Message-Id:Date;
	bh=GCKGam+kaNnhGUdzXlU3/ifX8LXS4yJfpI1068Eq+rQ=;
	b=JJZ+FjbNFUYOZ2x5pKXI7cSfIgWZI+0XsbKThstp4nvt0TV/DmujyI0cq53buswj
	shBSe5np3PAX+Rm7n3yskMbdmBWYImVV21TGb2GMaOP6inqV2MNDD1/YFMbKYv69HcS
	wA2253/TqW8Jyxy3oL+damulQABS2WFu8KIz+6m0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648907758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GCKGam+kaNnhGUdzXlU3/ifX8LXS4yJfpI1068Eq+rQ=;
	b=SuAbtKVEcYihK7+Y5n401t0VEu1vTvgHgsjFTgvk35vbPoNN6sxFOfmn5V9AB9hL
	pO8aIPdjRu1hY0Ld5YBvPK44m3I0+x2MEYY1r/We9i3qn5wS+zdC2Q9IRQGv+ioitz3
	SL8f2WGYr4KYTgubb7xyrBKKLkCbBeES/H3wlRP8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fea8faaa2-a89e815c-10a4-42b3-9b6b-a9b888a16adf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8037b574ed449e0aa2da852ebd0a0468e090d5cf4b0a73870ebda0fc0fdab09d
Date: Sat, 2 Apr 2022 13:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648907758
