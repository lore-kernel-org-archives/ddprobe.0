Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81FA2F49
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 17:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651079998;
	h=To:Subject:From:Message-Id:Date;
	bh=6Rik//4RpOQO0OSoMrMnM7yIkwekXZBxhrUB+vWqL6w=;
	b=ZvviAscnyOlW0xHAOyXqKxXjWW+cJvsU13FbpOtXnrW264fOZ0ktpVjkd1/dO/st
	olSGFC7EKvPmZoDZOvrZxKPOnWaaW4xCJWUQe4Td+6ETADeqgIubfd+XpjHMD5hH/7x
	SXVDPAQ2jIu2nWRAk45viT4ePU4IcBBSUoX+l7Ks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651079998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Rik//4RpOQO0OSoMrMnM7yIkwekXZBxhrUB+vWqL6w=;
	b=LlkXkldS/CsQdRhQVp8nqgyZPZSgDG7fBOFopFpDOtep+sZ4vDkkL+gOmB3M7OGe
	f3imWU65ErukN1TSQH+G5uIjFH0Oeu3j8xfoTJsTIlKr+xrE9g1Zy+ZcZ12b1eMwDXt
	w06vBVB+MEXFXaCOimdcMHhdmNNYl0UeasUp7gKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806c096b3d-f98c2d1b-2961-48e0-a0b0-b5f17a970756-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c43db321baf7d873d82dd17794d2f66339976993431efa9c21199be32cf078a7
Date: Wed, 27 Apr 2022 17:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651079998
