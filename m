Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7800223C3
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 21:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651355938;
	h=To:Subject:From:Message-Id:Date;
	bh=DmjTBYEhpxrUbm2ukXnsPiR3DnxsARoFWGzXE5VdqZo=;
	b=Fy90BnghdxISomAaLAbHozg9mOs8IhqYxyPFnvc5+lKn0XniH7SZvgQmMQe8ZcCc
	wV0dlfhd3uIH25j8HkP7OCV1sNFGbpWrBIUIYnzOOhwvcfD+ekkg/mqVihMZ4tEq84Y
	yKXaaKYoibr5mMUuFcDZhyWR8sP6q9U9Ebgnutn8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651355938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DmjTBYEhpxrUbm2ukXnsPiR3DnxsARoFWGzXE5VdqZo=;
	b=YVoggSOKZ/6SO/7wEJo3KTR5MZN3tmn/ePtWHRIJBcSz1juRItNcEDJvWWiMOnn8
	eyuHMjBhwQdq9cRE5Ml+Dw3n4TdPT4KdUHiFiMlS2iWSjzre/CFxfHYIgwsQ/v25Lya
	gF6e1VuoF6J/0gtSehyaSrF/kijUJXp4gN/Attlk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807c7bee06-d16a16c4-42e3-4099-a4d0-964de68ee519-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c22b33e62561a1e65f2b156ca703d6c18b5feea0986d43207fac0930890b7156
Date: Sat, 30 Apr 2022 21:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651355938
