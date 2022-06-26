Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249D93236
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 23:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656287812;
	h=To:Subject:From:Message-Id:Date;
	bh=ty1ug3aRvtdawKUFu/8oWngBVX59PNR1xRLdL0fkrpA=;
	b=czTJAHKLoy4s2YiZgq1GpL45q/BTaD3x4/g8xnwTQokL8NwYSkc+GrDM3MHrPyS7
	BMsdfcQzkukVt+IU86B31gAbBs8SvL39eIF4jsXluf2LJ55EdwYC2t2eVouqoprWgNi
	Qzy5fluBWo0DB0Y6TPk7sbBP6Mk4QB3WK7x10ZBA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656287812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ty1ug3aRvtdawKUFu/8oWngBVX59PNR1xRLdL0fkrpA=;
	b=FTTOzdoiGTca6ZZhyxGtNs924h1KXwW78ei3zIMkJ7hYdvZmcdftP48PHImVO1tI
	kHScZRVA4Q9o3IWvkzhlK3c8ccSPF8oOfVvPlBpFbk3gm309bjjTnBNwAayFjBwFHWR
	uBAzilFOFVGdcczHp0lTY4Sib3NMy+RPmucXQ1Ng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a2725aff-9a1b9f54-50e3-448d-888e-92ef87cc6c6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04fed7f6ee3433bdca6fb27c0c9ca3997065c94183fe4c02fc45e1c97e1928f1
Date: Sun, 26 Jun 2022 23:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656287812
