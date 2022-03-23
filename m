Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB1110E6
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 04:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648011384;
	h=To:Subject:From:Message-Id:Date;
	bh=3uuOlJQDxiqq7zSX4PSNft95RkTUYS5VBuu2PC/i2nU=;
	b=Rj1tiPt3zH5OQ7xjahp3qbilKJvf5vqeRBzMMh7SQTw6/3TNQgd7j3PJVj4NnBLM
	2YdkJVn9BygFfvbPDZKUU3ZTaoZxXWwNGsbh4YKm2szuBX7OMUcNDYuEkAydNJp6+vC
	szMoeEQ9bbLKyNuzvWSvQ4hgvamDjpMzUciNHBP8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648011384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3uuOlJQDxiqq7zSX4PSNft95RkTUYS5VBuu2PC/i2nU=;
	b=b1EaNj69kdE8ZN3MXFYutQVm47brToEAhYZH/UNFwiXgi0SO5tRn1Q6YtSjZEuLB
	sZPfD2ahzs5vvMjZIwm8Hmc5W1+oA3rQsZuFnDC9RgFT4DE7D9WAdGSPy5790bu1GAP
	doHfOyIVubMd5bonKrSuJFxCoAeUCe/kBplndEFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb52217a3-4849e032-704f-4284-bea2-35021bd07fcf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b925b03e91cdb7d9c0485f350749b92289198ec933de107353718da7b90011eb
Date: Wed, 23 Mar 2022 04:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648011384
