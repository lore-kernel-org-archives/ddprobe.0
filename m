Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664002F26
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659826252;
	h=To:Subject:From:Message-Id:Date;
	bh=Nx64DmjeL/neMlzJClCr7QM9vb5v/Th+GOcPYrxpLpU=;
	b=HzZEwqK+vRRtLIhjLvnQXWgoFWAG9wCxLFKNFr+Y8Zo2oBEeG5DJQ63VYsqtefwX
	N0eWBrG1tSRMnA7517UthViqpwz47sznWwH+nV03VfHgdgyMNcQ+LNNQIMwl++TjVCI
	jO+/zMjnpHwF4HE0qQ7YGv5bAPqN7Gy//TJuTUEg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659826252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nx64DmjeL/neMlzJClCr7QM9vb5v/Th+GOcPYrxpLpU=;
	b=VlMH2d/DF6KgzyF/FM2RkqhRM9b5URQQ7/mhslBbjqYsGkJsAAGMqPEzj2T08UuX
	PFo0bzaDDffFk9GdEEQgoFHhiIOJi8Gep+u8X2FghNUG9hI1j+xZHMzb77JRlXS2JZ+
	oMO9bl1GNxPOSgyRNWaLD8Q2/z5uUmdkX0OdhsvQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182755aab1b-a6b221a7-1134-4289-b8b2-ca7c431fc599-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9dbe3f02702435be9b5f1d2488ff02d784039a308cd4cdd03abddb7127b93820
Date: Sat, 6 Aug 2022 22:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659826252
