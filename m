Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DF9A42
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 05:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655012519;
	h=To:Subject:From:Message-Id:Date;
	bh=hlkg8gpRjzDpHfs82LE7XmdBBZodEz5x4DI5YgjUeuU=;
	b=Y7O8tLgcKHyWjmz+p6Bd7tcZ63Cu43o5xsHqetgmgLEuNxBh05W0F6F3/0Var0S6
	z7FoFffvdjw1eRf+av8jRVnGRC5rkjmxctB9g9JB58NSepxzfEJQKfZz2VGPKM+8YrR
	cls8VfdDks2/IufkVRjZxzA5lxfP7WmXywOoZDzk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655012519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hlkg8gpRjzDpHfs82LE7XmdBBZodEz5x4DI5YgjUeuU=;
	b=hsZR9OWNjT2E+UxKZnWpo9hsMYUDYjUsRgghmYOT1dt7LU1eIur9LgAejy97Lx3s
	EluyZ9G638DHo119TAHCfE8iCEHyi2cu9tKnE3cYOzR9QSLv8exir1fWC9y2e2IltRK
	1R9kkKcZxTBpweVUXZ8O1ge5uAnIMEXv464aJonk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181566eed6c-9f76c0d5-2cec-4bef-96ed-ef8e10438ac9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb0d3580b7c6219f7c821cd8588348574475c6101c1afa16c918bc593c318e36
Date: Sun, 12 Jun 2022 05:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655012519
