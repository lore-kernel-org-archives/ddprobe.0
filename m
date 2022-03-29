Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77BA97C
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 11:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648552378;
	h=To:Subject:From:Message-Id:Date;
	bh=rlSgTnlu7oCAw5zIw6t4iNdZeHIJ6htso84yTYr9N+k=;
	b=jArhHJTdMFI9om7cTgpzA2txo7vSFteWk11nuQIXRr9+WYrQS/OtHr06a2SWq5kv
	gNAitZz02+Nrh1KVwyUPSc42WWI5U57q8rz0+jF+6Gklf82uhMPP1S12Wl2SoLdl4CN
	9ZF2oXxryZvv6rHpYVbQoe62aukkMK6Z0HcdkYaU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648552378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rlSgTnlu7oCAw5zIw6t4iNdZeHIJ6htso84yTYr9N+k=;
	b=GNIZ3Ah25yMnVWpa0iMcn9kU9jfPtjGVD02A6baNGZJlNezJkn7OiHAD5Kro4MRt
	9g5vzM10yx24zs1pAuqiXsdrgM/3q21IETuprw1hqbHGcqaWEyn8wjZrNlz0AnmRf+G
	YI29UJwkagvPvNE2HaFjcJOS8EUqNKpY+sFe2/qQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd560ffaf-9c2e7d63-6ce8-476f-af2e-c9e01477af39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0fe23b2394e5bdb04f56d1a29f93f2fa7b92d725a32f6d39e4efbb04da6070d3
Date: Tue, 29 Mar 2022 11:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648552378
