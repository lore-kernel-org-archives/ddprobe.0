Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114917B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 11:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650974278;
	h=To:Subject:From:Message-Id:Date;
	bh=znpReg9EMUdU82cN5sC3nqTHIdD+EfG/tIlvM0sijRA=;
	b=NdnZ7702BapnobLkEbw298fYmgO6vqjMLN2geR3GecZzIJ4VdGfagI9nB/AyUc/C
	v6dP1nekVBBZOsWqHnIUZNcuNpcFiAXT65LtWZ4aWSwLwDwDht8T6wbpr9DQMcVHn1Q
	EG4Etvq3Gk16Gdpb8g2VOlN6GRnTlBdcMq9r9UAE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650974278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=znpReg9EMUdU82cN5sC3nqTHIdD+EfG/tIlvM0sijRA=;
	b=SlYm8HbIYELKtzleKogoZ3fiGCf4HehNzO3RoFBuisuHTq5SpC9Ff+I5YexEA4S7
	7IVkIx8GWhEW4pdeBo4WzQSXf1FNr1vN+HF/bSt3XAfzD6dvt0r7rDnQZdVcFcmIkYi
	Q3wxh5917P1EWtj74/jwSqvk6bh46dYnYyC4qYtk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018065bc426a-5cec3bdd-dc22-441e-9b39-1215ec19ed51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16d4d9f985e4ea7d75465bb54bdfde8881b6c42c29374fc3353873518ac219aa
Date: Tue, 26 Apr 2022 11:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650974278
