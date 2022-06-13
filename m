Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84D87A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 20:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655152259;
	h=To:Subject:From:Message-Id:Date;
	bh=WVjy4iyLnbFIDnr26iwl9Gke17rZBXQBxeFga58rSUI=;
	b=Mn23/OXByy//7gqCNeheG6jX8VfZmlpNVCC+rnkTHie8lQ90UWG2M5uXcH2nlciC
	uCzL33RZPLvETH0ZJiU26dieZm2OVMVYWfrqTExTYFehTcvVbGx2a36dd8s34VXuexp
	0wgEN8HvmMwDX5QTi4600fl5ITDUGIJSJ3fCB3q8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655152259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WVjy4iyLnbFIDnr26iwl9Gke17rZBXQBxeFga58rSUI=;
	b=jq8Wq4vaY7yQbaQZYEAUvNedNfdAsEC5CLob4ebrZOzqyAR0JowzAbQGP8dwyxEO
	td+ehPKzeMwuOxYTEeR0EzHcmlX8w+HyDLXHnDSCUqlp82WpANsoYWFrAqCI046aECZ
	52o7tCcl99IImLUr5oONWTnMoVm1e28F2QDmb4Mw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815ec3309a-355b0222-8b13-44e1-99dd-d51a96e796dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d3d5aff4c291314479ff91d758f3adc1ad61b34973e99d97c0f3da397dd0736
Date: Mon, 13 Jun 2022 20:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655152259
