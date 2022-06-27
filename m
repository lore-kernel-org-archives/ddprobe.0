Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEB47A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656310012;
	h=To:Subject:From:Message-Id:Date;
	bh=JTcWXYWCveAdYZwlzt2tuda/K0G0jx0Ojr2hajJItv4=;
	b=AKPR1OsGiYKmmMitvJ+m5i1zqbcPvNt+bLxojTjflcqle3MDwV6dGHSjjVdAwJMr
	zf5MlwX1FriDL5lhI3CT0GIc8TT8J5YLBOFJ5BPL+aeYi7EHyACtGRbkANfPD6Duiz1
	8BUGJc+RJRVX/ROT1Z995WFfWW4+fSymd92yB7JI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656310012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JTcWXYWCveAdYZwlzt2tuda/K0G0jx0Ojr2hajJItv4=;
	b=J11Tv0+Ecg4VyfdDgBC6Jk/ky9KBOTI7q7iyXwhEAxnUrnkeZm9flIWT9gZrjEdw
	Ooj3U3nbrjC+AduBxVQXEk+JEu/qvJVMQCk5VUrgE9UXGwyKyJCA8c1blzQtt7qJ7TH
	2LQ/o9dPGlzK6oWw68kcjQ7ZmofFldXuRlebaRkw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a3c51964-18550b84-d4a1-43d9-9a7c-2710bb4adfd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4cc84c9c06167f211ad42115b69e8c43a512ab06053bb572be0dc2a289604d8
Date: Mon, 27 Jun 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656310012
