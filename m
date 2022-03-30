Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04F17C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 10:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648636439;
	h=To:Subject:From:Message-Id:Date;
	bh=aAQ59ix51kkmZn5e8Gep3rOuHBfWAEzEMZqr4vGGje0=;
	b=CdKEajoJS1NS2uVADjCuwue9NV5fabrEDf++kx+kYUvxbBBozmEsWmujxAhaZFpI
	nm7j8GQyqbMrVdVl6uei8S3s8eidt8KlUEOhlSYo4KRAA4YqsELZqMGuAcmcSPgqhcm
	94RuRFwfSwbwUmyoofDd01HXw7nWZVjOiMUVcgYA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648636439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aAQ59ix51kkmZn5e8Gep3rOuHBfWAEzEMZqr4vGGje0=;
	b=SgXweUu/26qicPwzhPBTdKEjAkg6FSx7T/AvYvrMJzBVMyDhSXiudVDeSK9Ocmoq
	pSXQHLdBJdoIyAtjXOiyB1U4/oNJxam7G8CdISqhmRMfSWMVN1uGsSCivQvU2a/fs72
	IIfHz/WSQjqPQn9EP4LAYYIJ51M27NdGqiTfltRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fda63a6df-a8a2f95d-aaaa-44f6-a358-42db8fba02cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0b5cfb6fceb8c99549b3a34b0742690311cd3b1d244b0a5253925cbb8cee94f
Date: Wed, 30 Mar 2022 10:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648636438
