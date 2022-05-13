Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3703C33D7
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 13:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652448419;
	h=To:Subject:From:Message-Id:Date;
	bh=EBkIiVEOZcy48Y57VforO9u340WdAnTR9YErLwgTpjo=;
	b=HtMlRb5awfF9f+ITrHGJTaPwE6+4sW+Sai1q9qg6THT1AJS1MyVconDkiSWbjQw5
	nWOoISZvOgwmsLhRyE5EBAVGA61gx5kGX4KLnPjUTHpSvVh/vQTVEuZbmGWy/Qi8Zbi
	/iJE43GUkAcsDyHBCBnIACz1ZYCLobCkv+HXb/TU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652448419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EBkIiVEOZcy48Y57VforO9u340WdAnTR9YErLwgTpjo=;
	b=eE4cE5c1S2pp3zU5D7E4B2WXXgbl/ubQd05/NxYawER72sHIkK094//0+Ey4Wi/7
	SG+S+xUH9xCyV3BoCPgwwwq/qekXsWsTmuADT2RC9T+C5mhV700E6m2tmF8X9z0jCnK
	JgdBuL0Hv1/xR7DlbjDAA/EGeJ7g6RX4LYXMA7qE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bd99de09-300f2cc2-2e06-4c2d-af38-2e8fb7f341a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20c6a61104f0f7964e282903679adcc07cdee51eef44aa930499f17d86cf8a43
Date: Fri, 13 May 2022 13:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652448419
