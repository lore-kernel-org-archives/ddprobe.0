Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26905C93
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659261053;
	h=To:Subject:From:Message-Id:Date;
	bh=V7TEkWjj4AeCssfwcLH6StV81WZRmNllQpqKvOc+RVs=;
	b=ZFZgWdpY3uAcSncEAFqsMFRLVpPeI65JetqsvNw/7jwccc6Fmju3RiU7XpbvlUix
	crZAe0skagNdfnrgNemHEI4+buEvaAud0HIWs7kG7BB3nSYag6fClhQuvt4s9P6JD2y
	L2QTK1mbjGcF0xzfo/nxnDbPDnVdWpk2yVkcbcuk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659261053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V7TEkWjj4AeCssfwcLH6StV81WZRmNllQpqKvOc+RVs=;
	b=C0wBBMP4vd5i96s/SBuDtUykE+JNX66w86JBz3WD3oxgOiXlywb8xQ5czzmpcXta
	xqiZlMtrsLFUrOT5gS7UH1ywOG9G2AvsnLrp6cmVlYRIxY/MI9SlDOjbqdKGxC7hcGZ
	g/1An5MqwrRzKxYmNx1rX9GSamLN8wOAWDrrh6hU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018253aa6667-c8f0f4c5-b9f5-435c-844d-c9316ecf33e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11880467b2794573ad2ce226c52ee30b10c3b1c5088774bc220be685ad4c08b9
Date: Sun, 31 Jul 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659261052
