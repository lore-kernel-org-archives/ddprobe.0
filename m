Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2654E1383
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 19:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651952338;
	h=To:Subject:From:Message-Id:Date;
	bh=rHleY9VSmCQwwr7E4aJZ1c0YjAwmtHKapVs7sMeYqAo=;
	b=Aeo/rN4pUY3D9DyOOPBe8E3amUi8HfOGFYWhS8svwzws27F5Co/QB221qj41CPF6
	USP2vtcVb7JJkv9+7sJHVhgVFr7+vQo5n2yGI+fbZT+27CJqfXD5ewIVUm38pDZAPvP
	2esK5v+NxFCdRQpqPu4MnrMlqUhpvEODL2ZADafg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651952338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rHleY9VSmCQwwr7E4aJZ1c0YjAwmtHKapVs7sMeYqAo=;
	b=McneIS9VfWeR0t7Hj6NkZOkySDhWxa5KjvN2EYtruNHMmGnhZxhtyQWec9/Bw6gD
	tz+z0imD+8qyw7d97jLtsWFs1oVSnhuhu9VscN2IIJ5YnWKt7xJeDz4UD9TttOseeFB
	e8UwT8bOiaOts8l0wC2aOyjTWuX5XkbjrW3AYEBY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a0084596-9ae6199d-8e9f-4e37-ab18-9c7d6587ae09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f79ed14f0fee113e36aef75d07bb3c36954787f16dce53dbc3c964389c1b1ccf
Date: Sat, 7 May 2022 19:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651952338
