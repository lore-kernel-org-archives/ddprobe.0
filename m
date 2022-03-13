Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91CBB622
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647149785;
	h=To:Subject:From:Message-Id:Date;
	bh=NnyVA4Vi8L+9sGl69iKOcsEJGv0lI8w+t060pxxRL+g=;
	b=WLqb0kt58InkyNxyTorHiB2SefTeaz1Cka/KGvOeKydF6PnCwNb9dMJ30yRTSe6i
	5CY0RAkOY3viDji8rz1UwSPVwdQOKd5StO90HOhL0OQYMVL1mGKlXrB7cFuJ4Hxfj0z
	/G/8DH2k+DbeEm9YCliDwAvUoR1LygOIsEyWK/Wo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647149785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NnyVA4Vi8L+9sGl69iKOcsEJGv0lI8w+t060pxxRL+g=;
	b=ccYGq9R2A5BUjhEY1e+uCMCBdOuElyvjuGg4pCX98cLwL47KT0sFGvnp6JVdlffo
	2HzfvF9MXe09OYsNlTnhdhX9XNHDDqiW1zAsFX62gR10ynsEB8AzkEnlTdnqiFaAOUE
	LaqaT3uy0eUvTexflkwjgeIC50+67Usp23fFEq98=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f81c71f88-1e8a8ece-d2b9-4fc1-98eb-fc35afd0c504-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f7d95b8c4fc821cb614d72ef4b066b1bf65ade809f431713d437d7a2f4428b4
Date: Sun, 13 Mar 2022 05:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647149784
