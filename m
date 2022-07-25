Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7786320E0
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 19:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658776012;
	h=To:Subject:From:Message-Id:Date;
	bh=FxQD6GuOZBgTQWW5zXjYqkA0GXgwE8dPMJJ2k8W7+ZE=;
	b=aDFV/LIw8450qqa5UZkXsv204f6L27OgD3p/FU0sl4JjFr9jHUeeltLmk2U59Wxo
	3HR8VrJxefGVvVH0lNvwM4+ZL4ufvioviX+8agdDbqNLgtEyIk+U3xfaNP7yUugf78A
	hZGAHcz0wvA1d0RTNfUCVQi17qPudqqoSvNCQZKA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658776012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FxQD6GuOZBgTQWW5zXjYqkA0GXgwE8dPMJJ2k8W7+ZE=;
	b=BJIAys8W33ZeDHHZn0qTysBXSUn5v4VavxnyYxtqQNuwTauqWeS9H7zwsy70NCMN
	aGB41ssBKYoxaRafpHMNAmtcfnaNbZPVJRCwxXsyLIvrTh0Yoo9euyvxq8FmtaAsvju
	4XrdEnnmhm0A4ezqbu54+gnzoxq6zzfMrw7VNdXo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018236c146c9-24b0d37a-9df1-4b94-bb9f-e8df0d5a20fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 810aec714925f0ae6bdd78d4876402046772dae66a25fffb9ae5e962b7ba0045
Date: Mon, 25 Jul 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658776012
