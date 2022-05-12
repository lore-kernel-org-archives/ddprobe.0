Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB7417EB
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 08:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652344079;
	h=To:Subject:From:Message-Id:Date;
	bh=lXMs42AqE1k9tOodDs1dDYc0rfiNCR1urE1qdH+vOQk=;
	b=Ld8RkAKWIGd+j0YLD1whHCB26Arkql216hcCjMk1nbvrjig1QfE37D5s6ayNuwY4
	B+ieVoJsoqCu5mZQ0n/NqZotd4Iv/7Bmu5KVgCZ93dVg8e6PHZP2MLSwxfNiaSNNGrz
	WW/VDW/o3PskcNiD/WOuytJGTr8WtKgF+zdeuELk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652344079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lXMs42AqE1k9tOodDs1dDYc0rfiNCR1urE1qdH+vOQk=;
	b=dxcf6yOG5+N2tIlTXupMxMJLg3AKu3HfY2Q6WSDS4eAKlUEutOlQRrMYECCnc6gP
	dSdE3GzhqRhqOXySFq5GWgsBYlZDVVjcVJYa9Qc9dlKdUdpT84u/qCm68dgZVnHaxv7
	bkUZA0MYcX8w2xZGoky5QRStkm124vhBQ/dfeoWY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b761c37c-4b8fabe0-b9a6-4b7a-b6fc-b9483b458b08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3d5735a36b5764179cd7ab2dc25d2df74f81dd5a52bdd84581d88c385ae0999
Date: Thu, 12 May 2022 08:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652344079
