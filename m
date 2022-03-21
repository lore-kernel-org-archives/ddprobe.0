Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F757A
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647843384;
	h=To:Subject:From:Message-Id:Date;
	bh=cV6JiFYqx3/QSgYhCIIpuD48QGRVNxL0Qi/MhQN3lN4=;
	b=ROYJXCSjsyGdjOpYU+8S62yL5gfu+w5GtwjfjVL4OqvFn/8b7Iun97PXMtZ4mS1o
	WA8D4foFnuDDqe+ETlg+YRzNHDz+eiLHNjb2COB5544UrM6BC4ErsqRc++lLzL2wPIE
	hZI/Oebm6WNQhRuGVGDw9x8rPAgWpI9ecgNEct/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647843384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cV6JiFYqx3/QSgYhCIIpuD48QGRVNxL0Qi/MhQN3lN4=;
	b=iuyBc6f4XPSXRgVheGaU5bsGuWJCe5xtH9PoJoybiqkyULLVDFksT+ak0SUy6VId
	NxkCf34r8ob/POFWratJRRPCGYarw4SIatI9bBRBSK0FILfXpZ+6/mH7CjKXdqECPz3
	DgadaaxI370u1UvWf5bxu4DSYjbEv4IpVDqxOolg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fab1e9dd2-75ca8be9-78b3-4074-86f0-e1b46cda4a64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0638226fcc6f0a09f2b5e3a0b28a17091391fbbfd901f2def58d9187f07fb87e
Date: Mon, 21 Mar 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647843384
