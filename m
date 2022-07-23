Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCE97E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 17:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658599012;
	h=To:Subject:From:Message-Id:Date;
	bh=+CGo9BE7G2MDkJ4R7ESj/+95leA+xofTgqy+ndsVdBQ=;
	b=Qb6LmsdaDk1gRLtCHjiRx13JBuOERAWRvSJqhtCqx33nBnDZYh+hxK4XclqDLFV8
	TyNo2nDSlSl9VCoxCbPjRuEQwEepVvIrbf/CkkcGcEVHKWWOg0p+Z1mv2NoqCTy5Tjt
	OSY+I0Dd0eGyu2i9H1OvAZNessFGmA7Y9K26ppLE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658599012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+CGo9BE7G2MDkJ4R7ESj/+95leA+xofTgqy+ndsVdBQ=;
	b=TvOu11G1uVI+fg5mqaPVrcbYMAu50JHJfWGVwpG+BJtXQc3ciZ4QUeoSaPvFWAFg
	NyREG+zUazBFMFq+nKD73JQ2Lu+mmhiaasjaHv5aDr6E5DPeKolT/VWP2+J6lkT1Ra/
	h8T4WnrxE5Ieh+K+6Fb1okayc+mV8TN1XKPNxqso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822c3477e9-b99d834f-c141-46b6-9ce7-6f754d15ade1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d0530a03bf3e71c662d38be231cf8a1d45b81c6a685809fe66dbdbd8ff0180b
Date: Sat, 23 Jul 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658599012
