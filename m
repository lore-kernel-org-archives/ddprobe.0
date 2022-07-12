Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BA823A7
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 06:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657609012;
	h=To:Subject:From:Message-Id:Date;
	bh=o72jaZySkFoKW9hqcyh/FGM+DINcQf8XyYtHuinH5S0=;
	b=MEDer4+lbfXk9fG5/k0ElEsRzYks8JuzcaVpUI3w/RMtzSu/C4fM0VxSgWnE0KON
	nj0jIZAqyZB7HehkWFEiGoMH6jqXiAmeXnSklMgRNTcAz6lnCX7CCCGrWZjuZkvzHjh
	tjDWpDN6laEd+x1G/aBFOE7W1WruHtowfUmNy8bM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657609012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o72jaZySkFoKW9hqcyh/FGM+DINcQf8XyYtHuinH5S0=;
	b=IzGqmZ3dMIpNkYVoqoGWZmcHK03MPQDsph4BNeH/xxwhy7cg56tly2EeuzM7auOb
	t4d/a4RhO7dWEO5wgnHpXfQNvt6HiwoU858lknrMMHOjF85QvRNegVSzEYJp/jtoyCI
	LfcbivkV9jf5uJjk7eYIiYdB8pH8euc3gqeLG1ZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f1324466-4779b8d1-4807-4d69-a590-5f896564070a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3e7d93d6855f3e4e84e6ef26cf7366c364fcb828af58680e0f3d029829aeba2
Date: Tue, 12 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657609012
