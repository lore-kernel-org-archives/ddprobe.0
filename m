Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74247184D
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 15:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652024758;
	h=To:Subject:From:Message-Id:Date;
	bh=TM2mtv+0D5iIQuGSQqzSxdyG12K88W5+XZMcHj/2yUI=;
	b=efTCznvPI39G+/XsGFHD3HXnMwpCfbk0C3fyTZKQ5Na59FAsurigMcsgFBP+q3Oy
	gYSWVSgpEARXR9d83nPyAeh1VpNMwpTVWUs8mibLAfUnj/g9KqVov++BbQZWz0bEMOF
	1H38qotdO5mGffgGAjqg8wb3ooeAN4p03Girt/gU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652024758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TM2mtv+0D5iIQuGSQqzSxdyG12K88W5+XZMcHj/2yUI=;
	b=MYdFRcOFrU1sZRAiiSWbR/RLrm6F15rf+4n5ap6qhBuLbjvpdKQJggRcZGBjRh9I
	Er8y3g5n+G8mYiqheMwD9x9rVEV1VMpA7026oroaSU9Y20pjtYNDyJzWiSF6XwUzoMv
	geMNRm7aP36gMcehT8764WY8aYvyfv7t+7+pdoC8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a4594ff2-afb28175-a7fb-4416-85c2-965575f9d228-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59915d07e0563da3307a0afd9e20cfba62b86537ff366607e0f8cf07acb0aebd
Date: Sun, 8 May 2022 15:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652024758
