Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B92B2F56
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 08:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648282438;
	h=To:Subject:From:Message-Id:Date;
	bh=4MCB8+PjIYkv3RdPTsH1OJ2fFllhMSXnhHkrpE8oYzw=;
	b=fNL7xjIWVv1Qy5O3cTKbKVXElGfhePnsY0I+epvyMQqEf3ABSXqQKRLwyiZ9GVia
	NXS2TmJYeN+qauEZzg/zdkvJ77PpmPufbZNcWOFcBtq7HbETjIKF2c0uYxNlHk7mVmz
	NYwIIsf+2M0cUDFG73bPw4qEjJPIrwR4DBue9iF8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648282438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4MCB8+PjIYkv3RdPTsH1OJ2fFllhMSXnhHkrpE8oYzw=;
	b=NiZlbqbxAarAD2DMUVBjHORcFLUi7oNGWvgN7/3hJ1oh9oOFoquMQNgXcNV/rUdX
	pa3bzUxoLWuNwllrsET+H37lL3EzoHHWrGTx9hcf/iZO7Fr9L4tJULHPmMuhVmFu5Ve
	Ko9emeHfUT5FKAvFGqdJyumSHtNJ4Ft7Pt/95OAk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc54a0a8d-5222d350-c0ba-4c1c-a03e-0aced20cded6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b02e55ae7c90969373966ddea9aa13151b947408a7e6342a56382042feb06a8
Date: Sat, 26 Mar 2022 08:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648282438
