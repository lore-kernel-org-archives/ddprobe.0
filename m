Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFB97C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 06:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654669859;
	h=To:Subject:From:Message-Id:Date;
	bh=ZjkcO5OoSQ1cB4ma1kZs47L/5I7LvuQDkpcNtIpxkiY=;
	b=ZYeJIxVGFq+2hyaXbnpNwmZOGG+YYciUnsYdFj1J4upxHrToTb9graSq55ZtPQCb
	L1epfkF22mi5NIXXwYfz4wxxxH4LyH1Db2cncUy79dxnF9x05qKRk9paGkn4DYIaeaj
	nqveHGeJfg0nhNNKlxlQiqPN271OBjzVrpIaGJNM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654669859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZjkcO5OoSQ1cB4ma1kZs47L/5I7LvuQDkpcNtIpxkiY=;
	b=b1+2eEOkJjrPMVgoxzek2jSh8fhKgv8si9Cq6iRzVw7DdoJ9jXzEvxRzCbgKMVyO
	9uW0YnQgACP7DvaxHMjazjCchnfNDlNUrPKm7q/0q7weB25WSC3+KbIupzFyUOk7Dkk
	EOHgBaAx5HWtk4LHE+gp75kLeAhrBK8AUL4B1nsA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181420259ce-99c09fda-9b49-474c-a088-5af5f32a9588-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9b3a2babf8e5dbab4ecaec7a96bc985febb14a4f40c4b33caa22fe128495f98
Date: Wed, 8 Jun 2022 06:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654669859
