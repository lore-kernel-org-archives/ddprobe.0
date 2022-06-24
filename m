Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5FC823CA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 11:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656068813;
	h=To:Subject:From:Message-Id:Date;
	bh=NpamCXQV6JQJSQHbFUCPl1eLn0EMjv/g/lD80FPjgbk=;
	b=MzjjWjeZOKfnw6pCdU0G9SLHJqjvVEsF/eciXD5piYBvGHe5fPYdI/LN56NaBRi6
	vzDMOwKyWb1K9++54LbFzE1fTz30SCs4Kdj6q6jd89ELoJUmFnMMNV2NYA6Io4zS1z9
	aRy4MMW34BdJDGTMoCgSotRhUAw738KMb4VJLa2Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656068813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NpamCXQV6JQJSQHbFUCPl1eLn0EMjv/g/lD80FPjgbk=;
	b=bwsSocobFH6DXwbujlh0FM5Zd5Z49RalhWkxeBtwB3e4/eD7sJ/u1by026KpTZ/3
	JCFgNyA4kb4a3OpkPZ8AjoASnCojcXBW6N8gjfHTfpWKCG04WgVi7hs6iqH/y7Pfx09
	3hsuIG7TesDjn54WP51hHbki0kcaO5H2s69Ss1iI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819564ae35-9cf19f0a-31cc-41f9-917c-5c4164398f03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e790fd09b954dfe996fb29a1b151d51eadf134739e7efb40da004b1376a0602
Date: Fri, 24 Jun 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656068812
