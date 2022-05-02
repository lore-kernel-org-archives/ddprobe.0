Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D047F
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 08:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651480138;
	h=To:Subject:From:Message-Id:Date;
	bh=3W49jiWyqjchXLj9cwD0y5PFDuck+t5HHTVQe4tRI3g=;
	b=TaYjvsDYYCt+8G0Fhg5AaLYWLu3SjN/TWyXssotAxC35q4kzQHnuW5fmfl98xqTY
	6hvMO44yRduwPwXmPd5R01CVD3YKLzkpmgQ1WuN3kkSSHt/zdQX9JrXhRtanmNPq1C0
	d86Ubww0/dhYJkBd9mDeozDvHyG8nYzh/GwEW5a8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651480138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3W49jiWyqjchXLj9cwD0y5PFDuck+t5HHTVQe4tRI3g=;
	b=agRPtyxBm/+QeTnqaUc4+EA9QFp2BZZK7kf/5V3zzaodsYOlvQydeUyRDh4cjRvD
	rGgU7pL5jy1cba/Xnt4XtxlHgRJ0+RoBVI/9pHFamF6pQUHTi1kfO1PiRZWDb81wfcg
	iV3+G/bJaBvhnX395iATmDLYpEpXBUFJCb/P/SZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018083e31233-4ff38563-9ccd-464e-8f18-5bdcdb11897c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec6a22ad1de06a171c1b541fb244d4307ae7a3d1d2114876c1e480003fd7a559
Date: Mon, 2 May 2022 08:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651480138
