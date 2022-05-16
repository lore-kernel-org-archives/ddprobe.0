Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0705DA35
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 04:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652675219;
	h=To:Subject:From:Message-Id:Date;
	bh=qaFuVtXKnqY3PiHTISNJHfuIbhxtp3Pe2KVeFKiOmYo=;
	b=C523l1W5ka1/Gio9dVEz282r/DRx22ozORegcjZU8XsW/tUegg6CTE4Q7TR70OWt
	Y6TY9YZiW/5/41j5NlIay+VLwhRNK+97MO7vWQo2oT6IyHcBQ17QOjSUHdvNKWBKRk7
	a0V1eB5EBMJhWhxxiJZUFzQnSgXlmAJqyyJ7auw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652675219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qaFuVtXKnqY3PiHTISNJHfuIbhxtp3Pe2KVeFKiOmYo=;
	b=jhVhwKGdcoSsroK8YHNwx/xQwLxqayqXR8W1tFRZLu1RQPQvpc+PdYAlRnBixIQG
	uUuQJAfi+hSadkqQ/b+Au2VFCQbf2UZPLaoKU1Vi4HGxTsdwi4rF0ltJ+1aHcloHE7y
	dfqyTxV6NSAO4o7Onp3U4lBGhaFF5O/EWHtxTxKE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cb1e8f59-99c0006d-bf9b-4af9-857e-d246b7646a51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e63f0d989e9affeffb17f904c78db82e785d39c447231267784eb51f0e9dda6
Date: Mon, 16 May 2022 04:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652675219
