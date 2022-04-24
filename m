Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B3CA3201
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 23:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650842398;
	h=To:Subject:From:Message-Id:Date;
	bh=IrHirgwyK4LioE9H48l1a8MOcOoTYtsMvUCDV2q9kSM=;
	b=eh0f750ASXu3mN/LorJ1F/RoPJJu38LKi5Y3XN4GosEegBEuGFUmLSqbBUuXThik
	qAADXLujSOsZLWZGg8iS5HukV6M0zqZOmzGlLlzUNYZWqrD4ZMit0RoTkYIzIQsZR0z
	5bvLdtSO1t/KqVzhKjuB2hhQbci0IFsPUcsIeSrE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650842398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IrHirgwyK4LioE9H48l1a8MOcOoTYtsMvUCDV2q9kSM=;
	b=WUIpmqt3VuChKogamE98+yYuhy3FATWzU7orR8XkTVguTZPVlGWjz2h9Hp+BJd99
	os1YDXogShHmQSxo2MLzh0GBfCZVaMz8bYzWfaFFYKs9aJrDH5qMmiWhNCijwzgMQHF
	vhpGmELTtseXupn6H1E0aJwkaGA/Sr82XglmHpbk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805ddfee51-a858eef0-0ef1-4198-ae35-ac87837f249b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3638d3863a4f1bf932431d3c97cbc287dc501afc31465d3f7a403f4a195ac831
Date: Sun, 24 Apr 2022 23:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650842398
