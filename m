Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687B22F44
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 19:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647198084;
	h=To:Subject:From:Message-Id:Date;
	bh=NYUl6q+8f4qiWYTRhX3ZdkiNscYLIZdRV8lYpXMLX2Y=;
	b=mbHbJoWMNEEUlLVAB0ex+AHXEC2SVRH4eRwJH36EmTMEfaImGwRpmlaty62hWIrE
	Dclpi7wGztJeOzt6EdcrgUG21cTJNPLe3ulfrRbaQ/UAzjSfnbqNJ3n4GjiXziFa48v
	Bd7bZnhLPpmtWG3DSYzI1+CfEuEJPUQtCf+4q0MU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647198084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NYUl6q+8f4qiWYTRhX3ZdkiNscYLIZdRV8lYpXMLX2Y=;
	b=Bli38TPUa+7biyyeW+1VhSIXnxTw6M3JR91xKE77fssRAV5QOFRDjkdI0FQvTVxf
	WMM5e0V/rIuuC2Ig6pR6aA2N1PQh+XlHoDEi7Ou7UkpuutggzuY+KcORgYKMZwCY7eR
	zRyouZinqcUIBkXNvNjv6EpMh4zXXXwAA01+Vl90=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84a81eac-818f59e1-234f-48a6-b2cc-330adeeddae8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7214a5e4c7041dc6c8ae26c1c8e27e74ebd1dafc0f48abc9f89992fc26e72d55
Date: Sun, 13 Mar 2022 19:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647198084
