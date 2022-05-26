Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8671855
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 17:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653587339;
	h=To:Subject:From:Message-Id:Date;
	bh=6MYHhj6h7DqcNmosUhkfoctzpwSz3ivQg3dtkRBDrfQ=;
	b=N9wb/8x1ggNClgs0jbxFisi4J6iap8HglhJRDAtYa3cPRh4bSSPTCNGHLEEzBusG
	37/stfabsPjDeottjNPmgJ7wGAQykNUn1yJmJTr/aprE31SFfkTKfTWzXTCYTMNC8fn
	Dx5tmhwOU6b7tCe3Pcj0iha7kxAf2nqpBllHu/PQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653587339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6MYHhj6h7DqcNmosUhkfoctzpwSz3ivQg3dtkRBDrfQ=;
	b=YZ2PtmuMow+GP5Gez4vTlGE+HfzgNgmxd8DHyOBYVi8fDVzaLWJoRV1aZxpq8VnN
	iiQ0e+usrSlR8fge2kwUhZCM4VMITcT8LQmCxujw6qWi7AEUEcD0bfUqSu3LXrPS6Vy
	lJyt5hK6NQZRztQxMvxoudy2EU81A5SpsOKcokeA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181017c6815-60b57290-e490-4269-8a94-e445802bcd24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4274ae74343b8df63100e44c17de9499e3685d27582eab1a57cff527f8776ba6
Date: Thu, 26 May 2022 17:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653587339
