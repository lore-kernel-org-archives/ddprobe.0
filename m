Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF44C4282
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 12:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647865584;
	h=To:Subject:From:Message-Id:Date;
	bh=qc+y20PSTF3Qy9mJOpAJGRbYZFCt2K5TM7It60lQrho=;
	b=J7f4xzklL+x+h6NCkOIqN8C00ae9rUAASIO9MoJncFpGc/naLQeK1J92MEhkoCMD
	xazVtrVl0RpHGIOYNbYpA3FUhQrHeTrNBTIblLHx5cwBjcDjyB3wJFKyHJQaPlcyAbI
	Bg/T/N/zuKKQtnrMUVKSCgVmTDh4a6a6jOfyahAI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647865584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qc+y20PSTF3Qy9mJOpAJGRbYZFCt2K5TM7It60lQrho=;
	b=DGqotvLvvj3nmK+ksDUMnW50yhKGpDbfffFi1sOmip3J+wOd3QtMMbKWuE5K7ihq
	w7R2tZWSB3GEWR7ZRvL6TY5GOKs8Rt26Ds/BezVSijo6VoNSAj0X8RKEVqv3tp68wEy
	mcPwQ2bQZLYSmQ8QBbhMq9ydQp5FELS0rHY3F178=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac715c6d-a44884f4-f56f-487b-8690-00357b5d1c6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9a509e1fd9a2190bdf4698a5f08d202563a0d3db5242735886b30b6b94fdd47
Date: Mon, 21 Mar 2022 12:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647865584
