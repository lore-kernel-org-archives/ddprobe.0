Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A0B17D7
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 12:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653048179;
	h=To:Subject:From:Message-Id:Date;
	bh=alhIbkoJGsuRDLgN6Eo+RqgryQW1v00CEt5g6ThO56k=;
	b=g2WZ4NJUT8PmcI/FtUGyk8m2jy/ZET5AsdlBSGa7iE0f1qml4MKzFUDQpNsftQb9
	5d5trb/NAhn6RYPs+0IMtBJC2tkaB8pMWWvf17sGP5YylgYrPETpG2YPEeCFkzMdSaI
	HWtMARXcG9usOZptJEXr8c980FEWiLm5zCp/53BI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653048179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=alhIbkoJGsuRDLgN6Eo+RqgryQW1v00CEt5g6ThO56k=;
	b=B/CTMUetE7XHm3DgTpf/VKR4b+TxqiBZa81JfBc6rO2T8NSON02rsFeyPr+JY8Nj
	bb0K4HejbzFAkFHkRbnqBsSv1O6Pk3bpF0165QhQXeIRzBi91BqQwydJjGnzYshabIZ
	fMLDaXfiElldbn7iesB+R4/NRwazLfzigXv18wBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e1597a34-9a4f6283-97f0-44d7-b01e-7cbd425011fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1b2857298905eb54292fa16ddeb673cce57fe554c33742781de039608f71f21
Date: Fri, 20 May 2022 12:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653048179
