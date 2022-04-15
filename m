Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D12B7E
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 13:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650029398;
	h=To:Subject:From:Message-Id:Date;
	bh=Y7zmooFRBM4BOmrODOkloHeek3wRy1kW8Rj3vE6qWZs=;
	b=Q58pSktepxMl9WCH65oRxBCWDPdhX/hCpj4j3buRtIbhyIql0P/f6VFXQ0i5Z9vx
	t5Xk5usfWtzkSHw9CpZW1GB87Ls5ghgxXbefPrFcFpu0tN75rlLkaevGwbrNkz7IDrg
	9vAZNxXNecaiY+dOau+3mzlKsxkIYr7cd7QJEEfQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650029398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y7zmooFRBM4BOmrODOkloHeek3wRy1kW8Rj3vE6qWZs=;
	b=OnwRAUEgPqypbERTKMQWkVQWuRYkJKiaZjxbqJWG+Qg3DK8bxcUPPG4APKFcchRM
	wazvqClrGA+yQheDGmCELM0sQ4d2raW42YX+/swL/hIBVqZmly7frrsHCJtsPJkuIsO
	q2C5IFTqa6VduBz6MTzco8fHRGXyUTlY9VMkxUoY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802d6a8905-8e135583-829a-413c-8ea1-4b8b777246fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 898b9388a23ccc79a84f0d198f0c3992681229d9ac195363b3f041d36ccefa73
Date: Fri, 15 Apr 2022 13:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650029398
