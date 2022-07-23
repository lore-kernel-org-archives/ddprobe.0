Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281B97E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658586412;
	h=To:Subject:From:Message-Id:Date;
	bh=ZmeY+vsYdg8hudjzxHmQQsXPHIsLkb480pPjyRzarrY=;
	b=TSZIeekNmR8Ol1G4VjqzIUGPlOs1bWYBEZRfc3QGERHMWBcbgEFZ2YwkeQvr/jkp
	uZowzU24fY0hRKuTZ1wKgWzAJQohcSU0D9zVPgAWWKvCqZGpo8mGR6b74W4RpsmHelf
	9EETtPMIFZlUH6nwrX1K7zgQ/XSJxU8dZ/Mh9x/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658586412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZmeY+vsYdg8hudjzxHmQQsXPHIsLkb480pPjyRzarrY=;
	b=HYyq1JkVYWPkrOutFa04OiOGfvClOCfCyC6orE5kjp6xoex561LAx0iKQtEAOI1k
	YlUO6oh0b6r8+jhHQJL2esOn/Vz5AvOn7YFYD16vab9Ge2PuVTGUG/LN0zxA87tPSmu
	JKK2hUFMQ8nfUTncd/aswmO02ZA7iIzoW+hQ3nSE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822b7434fa-f11b4d11-141e-49fb-9269-9963b652299a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8551eea7e05338fb20da658f08400ad932adefe9bee136d09aa9e1fa909dedb3
Date: Sat, 23 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658586412
