Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3953229
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 23:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656373012;
	h=To:Subject:From:Message-Id:Date;
	bh=1dNh8MzGvgokkXxZLQBESRwPS+VakQeVpM5m/szPg4U=;
	b=fO9myCTPT/mhLJ8GAzzZnXIJ0Sb9ibw9L9uiXMfuoLst9TOrw+q0FsTNuhnNwVaA
	rC35uHMFReFpWYl+rIoJXJVe29a2yNzA5yBSLvvvWAElb12VMmQzrNXgx1jhA48iij+
	ynZ0la7N9rUN729oK20679aYnph5IP3o3G/dnPRg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656373012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1dNh8MzGvgokkXxZLQBESRwPS+VakQeVpM5m/szPg4U=;
	b=HmYFPszU11amoUzrdewoMApEt8bAz4nWcRr2rD84psI3UJ2m4IWuq4hJJL0FWfOD
	njPIDLcfoGycT197pJdrAcgm9kLuOE/QvHhn3jWUurqJgiSNgjMZY1L2kU4xpFgABby
	a79tDLkNBB3hRYZRBjIqCLED+8MteQ9u+En5HxtU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a78667a0-84b7ed60-3a65-4add-9b2f-493a738c979b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e8f9d5db2ecf383934dbb63ac39c8b54ed9d3766bc970746e4e342563fcc5b8
Date: Mon, 27 Jun 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656373012
