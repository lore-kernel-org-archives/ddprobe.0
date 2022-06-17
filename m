Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B177F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 06:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655447639;
	h=To:Subject:From:Message-Id:Date;
	bh=Zen3P/j5G+6tbojcu8szRjtKe/y/9hBouX/r7ndBeWs=;
	b=QjzjFkNVxjyWpq+hw4/XqynLgfca/FGlnpKp0WJ6CMz5qVa/PebFSPjht4HBALtn
	qtNlBpCcAseGM2/KjxmEuwieqYfeaPUxHlBlLYdmfpgEyy6jmUYigAmW2j2Jtq3tKE+
	ZlaGo0vqctlg7aZBDqt+hJnpIFmLcASRG7Kry/YA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655447639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zen3P/j5G+6tbojcu8szRjtKe/y/9hBouX/r7ndBeWs=;
	b=fD0H6ELCMbFR9L7SPO9/4bd4APl84W2JOZbNfI6xoJAly6xEmryKMRy8WLNhl1Ks
	I6wi8HcRLALvs7KbCb/lSVlsxtYFNS+6VPWsJYhTr4WNSvJuq07/RturmLLOzRWsWh9
	g9r4QSrnbsy/tLcge0djO5ZzUjoa4flkujwfmQq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181705e54d7-9ddddc2c-e817-44a2-8a9f-6c43b00adb44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e67f91649009ad39e8aa39bfde4621fa074ccc672a1022db0c3e7863f13fc677
Date: Fri, 17 Jun 2022 06:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655447639
