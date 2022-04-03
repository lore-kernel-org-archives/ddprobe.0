Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C967C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 11:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648986958;
	h=To:Subject:From:Message-Id:Date;
	bh=J6CJq3YxPowBYtxayEHn1WYzIHEIH3vH6LfZEqua9cs=;
	b=BfxsqWxBr+qyitv/3pu+93O4c2VLm5KAaBDZhI4K9rBvLkLGD0pLhqaAdrAkpabS
	SqwqxGKzDTvmon9ibMpKFrpBPLmzuTZ2IqOKDtiAfFZr64FPUxk4M5HVIx2hPcQPjVx
	ohgoPr2Q1XDns7Naq35kIjwjm+zz+tj9AiUH/XKg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648986958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J6CJq3YxPowBYtxayEHn1WYzIHEIH3vH6LfZEqua9cs=;
	b=Cna2kXGM+EagVn3fNeomnSJo0oArlQgqmZmr2LRGmGI/PVTGeszAhu/RdUQk9Krg
	h7GE1+YRuB06aZhikIqldGkMO1kUWWe61d8f7wWxqtln+Rwr4G00/IaPyXxzy4qKQbd
	WmiffZG7UJe61ryhYCm+j8iGvBffJXoWRY6obYaA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fef4829c7-6ee5f955-e750-4897-bb50-fda9c9924bf7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f0e63df73093afe3f1cd870a5fb467c92472d4b8869a51c04301f97d6fbc39c
Date: Sun, 3 Apr 2022 11:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648986958
