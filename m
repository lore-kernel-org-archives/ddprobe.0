Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A4246BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 11:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654427819;
	h=To:Subject:From:Message-Id:Date;
	bh=O4yf3twDpzLeJKl5petbRyrocQW82WaplkC2bgJ4T3o=;
	b=NvzDmVqOjWo6PrfKSzVgi06+Nlk+pX5wQf0OCeOEn4bA1UFlg85jBnrvTx/5hTMm
	66T6LWayBxZpEN5mNKhS5Ahn7H2z4K6TAE3L5HmnYB4u+yx/2RGJwfEzbusNr9yw02b
	A+Zsx/KVuoXz+13meVtIMx/k/SsFHYR5zkF80SIU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654427819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O4yf3twDpzLeJKl5petbRyrocQW82WaplkC2bgJ4T3o=;
	b=eaG768HRwr9pQAGmW0auhLUMWBF2SuqYVlPJ6kf94gQ55CUuHEBuWuDPKB6b3qw9
	K3D7PaDv868xEe3P/oSVyIqS9UVV2Cz8zf0NJL7n2K/UU5un9bZCeH6DyTMm9jrA8zQ
	pAICA0QDWK4KHbLNybzkDItCffg5ubmgq6wgIsgQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018133951d55-479f774d-ecc7-4ab9-b9ba-634ee64e5f0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d1e2664a21d83884414ab0a47d856b7e07de539800dfa4b51f1cd48374ae9aa
Date: Sun, 5 Jun 2022 11:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654427819
