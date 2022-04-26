Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075B67B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 12:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650975478;
	h=To:Subject:From:Message-Id:Date;
	bh=/vXKmLh3qDPX8pchJF7GkmoRHU3KUqoqPxAG22gxkX4=;
	b=I8wpiFyfqlnMjRggIh/EMXZ/UyBhh1oe41dK5DPvQQz/lbC38df2wwBvuScBrNcf
	vXZ8Fk6ddgUCt8J1/PTuqjBn9I7lnjrLlPFq4jD0a4jxkdN5aA8eRukbwBCPaq4XnSj
	2+7PDARQTgjhXUX5+hCnySNuFwKsj0u8MT2KIXzE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650975478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/vXKmLh3qDPX8pchJF7GkmoRHU3KUqoqPxAG22gxkX4=;
	b=aeFeEtj6SE7+HKYSgEf3cjZAOZS5WuZt3SyIWPCgBaaGXE5m16MckNXQO8ltAPGJ
	5j0pg5Ry4G8qLqI8ACZhmYiILzhkWGwmulJaJWgw7oIFoggrQ89ydUJvETxokjiwLdv
	T12JLNvapm1JoepcSCHAqGG+nxtZgyG8JXAtuPxk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018065ce9215-bc5376c8-2a32-48a4-b391-4686f19f7292-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09a21d76b6be32f5a4c62ba02b39b3f755dc35acc4214899b7c8a479c41ad246
Date: Tue, 26 Apr 2022 12:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650975478
