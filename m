Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAFF17E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 08:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654072739;
	h=To:Subject:From:Message-Id:Date;
	bh=eISritDmnh00fOQd6ILZLUeE1OoPhyRAEjOQN9+yY+8=;
	b=NubfuQzS+LXffXQn00zIBNUlda04H4J7eAdG6E0wVC93vokRYPffElekVuiE93xj
	M/ieeksg2Vd1Tp/gYoHY6FEtNX2oQA9vNxf55SGex114IonC8p84ZjrGXz/Xa70Fx7h
	MaEzwxaN7wdZV8bn5nKDxQEm4M2UGrvEj3jXGE1M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654072739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eISritDmnh00fOQd6ILZLUeE1OoPhyRAEjOQN9+yY+8=;
	b=j0wD0/RWRHAFe/kyLAjc/24FfpiMMTsgnDfE3+wpAsydR7UXSy/b0BuccGsikrD1
	eB2HRfAEhxyWX6g/MtFCh0dC7975PUc11wvT5+bAxZgv008VIHCrXeAc6W+u4bapS6p
	HgYH5O0jyiZKg4G6ZvNeYBsKhm7BXO1ADYfNgzrw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811e6b0592-ad92665c-730b-46bb-a5c5-53f212418d37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e95cb17e7c5d7a69e26e322a30e1052ae0530aa2806b1cc30e93da6ee05bf23
Date: Wed, 1 Jun 2022 08:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654072739
