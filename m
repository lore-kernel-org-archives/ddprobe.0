Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B22F1B6C
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648067784;
	h=To:Subject:From:Message-Id:Date;
	bh=Y/m2RRajZDC7jfEa0z/qIKJYnfR39W0pYXiL9YnqXAE=;
	b=XhPIq4zSdiGBL7TucsHjVDQ8CshM/eFjgcJVSPEIhLJmZjfozGHx6gx9+1tmXHRu
	1nUS4xaHtCTYXylszekmNY+iwbivCz7Spn/6pA4iimOE4SvNCEoqvXpOw3hQTzwiBI+
	wI71lv+7d8C5+BTxwPSDgz+nElIAxctNVktnOUOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648067784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y/m2RRajZDC7jfEa0z/qIKJYnfR39W0pYXiL9YnqXAE=;
	b=eFErGKxNZ/1UJlucAa2oCaeuSvd6mLuDK1r1PQAghl8nxV2utAw1KBW3Y7Pf+SCa
	ultq5PgxzS+Tie/ywrflikcyKLoj3OEjnqQChK91k+sfCng0nFLnFAAZr/24KZZY1Vl
	gxdbVrexczWYOoybZyhFDw0JhrcgM0yKXauK6rvw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb87eb01b-1d9f994c-ff93-4a44-b80f-145b6e177292-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc35b51bdbb7a2b712028653ebed3abe76e71a7370ed92e9314e248d4fc0a39b
Date: Wed, 23 Mar 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648067784
