Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573717A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659056452;
	h=To:Subject:From:Message-Id:Date;
	bh=ST3Qxeoi/8UlqCAtZawoROE8QG9YDuC+vPjI4rpu7WM=;
	b=LUBZEv8TSTUxSdJdyxuw3qtS0IvpI9B+N6xG2Z2f8hxsfI8Hhf5JrCLAjp6rx06Z
	oaaLDVwcj2YMTo+fEln7AY3/4O0Ue8ZQatxzZfsVZKUn5xSEuhuRXY9mO+BHT26nLJU
	0ekEIjR9PuZHuIC8gdsDaSIyd8wW2eXBglyxEnDI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659056452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ST3Qxeoi/8UlqCAtZawoROE8QG9YDuC+vPjI4rpu7WM=;
	b=ahMpBD9jnJU5kD2fWPIctsBQPQ93Oe0SmgJhGaoOPp91tIXwS8GFw9yMjuaVDI3h
	l6oE+NJ8iwffqZH1xtSArroM1W171VSpuzx18vldBZjZGbTtIV4bNanhA1+hfPQU98D
	sZIEpoJGmpCMFirFMlrfoTIcdA7rYBoUYRmpFaQo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182477873c0-4d21f993-3918-4d31-9a0c-a06483fbc7bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d20a5049147a7646822c082c27a6edd416f6248d975af8f6dc5bb13f2043ffff
Date: Fri, 29 Jul 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659056452
