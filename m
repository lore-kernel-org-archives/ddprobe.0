Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093E47A
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 19:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653938819;
	h=To:Subject:From:Message-Id:Date;
	bh=1hpTclbl5kJTff1zXToub6rnSXD5n6MiLbfbm9EWivQ=;
	b=VxOhYnkTU9av6/xswBW0XaBgKYUU89pQmXEPDBB1u0uX1lAvoamm+c5Gle6mc1cR
	oWInT1M+nTH3gq7yBzVWQIqBmrIwwCk4vHTc+jHfI7KJY+Bk9EjHQ+GxZsNkiMNItLg
	EeHoAYgnkX/nmuoI1oe05TJtlVnfAbSWa2JVFmcY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653938819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1hpTclbl5kJTff1zXToub6rnSXD5n6MiLbfbm9EWivQ=;
	b=YJLWk++fJj4qsDHRTjGlE8Q8b4nz58aOOZcWnT7auBIRZOEBskF6jdT5QT0ACJlT
	MlxigrxX+9Ujg5WcTYJNGJMg1EOX4mQuRfiNpkw2REaLaTNczFtnEUvRT46lzBqGnDy
	xy9tbci3I1wpTWC+Z1xvQRZ3swgCLBBotNg2OPFU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181166f90fe-178c3b1e-3c06-4a98-b9fa-4b91779b73e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39de203986f326a2d204d3b096dc1cb98a51bd3d8e25e8ac41d7c5508447d372
Date: Mon, 30 May 2022 19:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653938819
