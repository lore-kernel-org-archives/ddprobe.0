Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6002581
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 20:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656103012;
	h=To:Subject:From:Message-Id:Date;
	bh=r1V752Hy35PvjK2s4D3vGW4vUrYF7qrvZzxCWN7I8gU=;
	b=Ka64NficVlOs65NFNl96AIhAwb9sokkQLGGiDiepFGTnV0SJu5ZB5rotEKDNK3l7
	juYdn64Z0CCBwhHkoyA+8bedYErvMLqgCXM+6QTXVm3s8QfWrDRxOnlLV7ZN0AVs2oS
	sYyMluU/23OKVOgwoYoxDiLKBX68lpao1+iiz1Wc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656103012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r1V752Hy35PvjK2s4D3vGW4vUrYF7qrvZzxCWN7I8gU=;
	b=I4kFxUycQDs4Nm0sWM/9RBqpXP8vUfTONGLujffwQjiAZTViJYwhc2IdBt/OwK0N
	PxSIbR6hijvIxwQ7VIwQMgjkB05IHRKCtfkkbN44IPUXOI8Sph5hIanIe5z7WF7Q9MU
	W67DLKuzaWKfWUFHM50g8D8U+ITsaYpHtiCo3cXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181976e879d-53d9e6ff-05b2-4927-b47c-ac3fdcdcf40e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42a6779752cf53a3368def7fec10db67aebb7e3fa6e24dbbfc8ec2a12736789f
Date: Fri, 24 Jun 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656103012
