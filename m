Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CBB1849
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 13:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649684038;
	h=To:Subject:From:Message-Id:Date;
	bh=TgE1FDzxQKyYSKWwg26X9ZWYjCFY7r91VkkCxqIpGWQ=;
	b=Sz9Czhvul2IzRMSkx37bk6u2yMVMKlBAEuzv0NsBbPcmjmTaGV1Rs5wVKznjLq/n
	F7aPCga26v+rUo7lHGHP7dC3pfUsrs7uNujpjruWcCG/kW7zFNde5aikGECbjkjI08m
	CUorY/RyTZHau6S+dAgQGWN4R1rt+u3e5wUz3BT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649684038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TgE1FDzxQKyYSKWwg26X9ZWYjCFY7r91VkkCxqIpGWQ=;
	b=NJ1fK6gwC0J43qRKtt0qsHXaKZgMc2y6gcXYKZzw+k+eOZdD3dqmkD3aH6umLYsC
	KnR84/4omaheB5bCzt5OhVs2+UJk3M7e61EDjeZChq9c92nfGrCiEzO0SVBs+Naxq0T
	VsGw/ustR6lbmjOAQ5EmWg1F5zeBhD6F7Bzw5VXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018018d4c285-ded4ce1b-1d77-4227-9da1-1f64696fdd78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3463075e258821dd84e109338f7952b0d69f634b1257272f8acea3ab1379b962
Date: Mon, 11 Apr 2022 13:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649684038
