Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8395E7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659417652;
	h=To:Subject:From:Message-Id:Date;
	bh=l2RjZrboff3tmmtcfpG3wSKRBd60ReTYcL5gw2vO/fU=;
	b=JzgVa9xBgXe+drMTTJ+s5tqJPdlMYWqLPSFSRHKiZ4LVysQN3Mz8O+toclRf4pNh
	fZaoyibtoV1ItQYoMcGODhGecjHPr63WeiE0t3IkYg5bdQWA++4BuCR/u3QP2OOCIVb
	zVG7B04p6vlSmpOf5x0PCrWPeZZEervTNPyMiVh0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659417652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l2RjZrboff3tmmtcfpG3wSKRBd60ReTYcL5gw2vO/fU=;
	b=N/VySxDVnjmFP/FdQxdRYm/4wibEIgbLKp9U5ikawbjfreJYjB3b/eSqOI6S/chq
	Nh0QqehcSnABg9dCsSyQKqcOGXtl55UNzFJYgpswOOH/YlwdtlI6awhDShveic9URbe
	Y6qzzZXoeJ0XoHhuy2pz8dxie/9VBrNCPODic0sY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825cffed5e-c14e82b6-47a8-4824-8f13-1e9b51244859-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e37f714f6cb86f5608ff9e1687b83e7746e00c7ec170bdd51202ccee2e58fde6
Date: Tue, 2 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659417652
