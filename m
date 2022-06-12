Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05EAB7C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 16:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655051939;
	h=To:Subject:From:Message-Id:Date;
	bh=tyPUWLmQrjO4CVN2G9QYzuZENc4RMRyQo7zNd/C9H7w=;
	b=eW/R084cQOO54HBiC2agf8CdFRU3Kngxq5wBdHJKsdzcZgEOZhg5lMWAPIycqTsj
	IFdfJlrAIoVBrB77bGss6An+guh+z3ZNsII9Og4mEoQlzn9nsueyynC2nCTDE7Fj8+i
	q/y4gPi3dmql3h7mccyJeV7FvAK1mkFmeG6+h2Hc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655051939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tyPUWLmQrjO4CVN2G9QYzuZENc4RMRyQo7zNd/C9H7w=;
	b=gFAEs9OSM+vmOcqDN3uOzKTBECNpoteu/KhXjYRS/Vhxci8syeYiPem5bhZ7kVO0
	1DpmQCJ/AgBlLjLfzS1reoS+GWxY+lZTdqr9XxtCJ3CuMR96qyO4zbreFZ47Et6x6Dd
	mW9wiMuexaGnqUnxSeLnRXE0ZS5/FbBn9ux9nefU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018158c86dd9-87836de1-105b-4dc7-bb40-dceab12a23bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b73eb55f62fba660c11d7d095d39b552cae4af7b922b3dc3cdcb0a616217956d
Date: Sun, 12 Jun 2022 16:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655051939
