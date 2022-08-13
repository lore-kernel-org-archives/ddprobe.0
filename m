Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412077EC
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660380652;
	h=To:Subject:From:Message-Id:Date;
	bh=7GR4x+pwkz0RxwQbNpjq9pt7pqWHBDLiImi99rt+uLg=;
	b=dWBnIoxh87oVofu6wlcnwNsYG6qL5DPBvITjrtIsWhaEfO/nFe9YetiEkoeyxPLZ
	wwds+PC9TxZR5IPnEgSeVnwYiyV/pEvES1C79uiyhfh3K/VLXZ1JwykH7W5fy+tVTXz
	Pva6FuKEQcaYUVMhYwrlqOLG25sDCJtm2oGOuzxk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660380652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7GR4x+pwkz0RxwQbNpjq9pt7pqWHBDLiImi99rt+uLg=;
	b=SORW0dawkaKDYU8tY5xJyPZdQ/EPrDmC5mlNRRmGDhnaC2Xe5aJScDBs9vjGPQz3
	e5I3TFlIG2KE3gC4zbhqX7Sf0cpvnW1GgCcm/H75nE4+/7aAuUjCJk9trvIpxtoYhHH
	vCc7W742xmryYHUsGM62lbRMwaLh/WT8WOxfpCAI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018296662405-91449493-453d-4e36-a666-d4e6a99adbde-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f9acaf9202724137b260acc731c7d09e6e2adbc44395d09a55d77554726d87b
Date: Sat, 13 Aug 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660380652
