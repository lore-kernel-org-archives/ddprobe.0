Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B67A1874
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 12:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656765412;
	h=To:Subject:From:Message-Id:Date;
	bh=CDGxDcH+Mjsi+32tnCFaCMZ5ooWm2QYOspYvfbFcxc4=;
	b=EvElCYf0aPcPzi1DLGn33iDuA0s4tsd6jQErII1lZ+Mgq5NGjDcRjQd+1xs8XK6w
	3yBUUsZpg8dn1I43y+lMjxpymEBVpqxPBt+qa9C4s161IsaFScaRnlHqe/e5xTOrDgs
	xPYzq0JkynhM1zQ8mVQilta7gDDogETspY4MtApQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656765412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CDGxDcH+Mjsi+32tnCFaCMZ5ooWm2QYOspYvfbFcxc4=;
	b=LHT2m9QoWs4s2qCx4tJLIvg2GXYqeQxg6xe4Z6R97XcAuIh4qjwqsaohXzRZVxsV
	0mqHDiB3zJ8zQWh2HZaL/437XYgeE2ji2oJmHS1/jWQtLdonC0nOh71XSS44WUb9MoZ
	YYqkteWASOdjHtuQWwoQ+gcc0BvsDzwawOFhNl58=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bee9f467-91478675-dc36-4890-8e53-1cf89eed6037-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d892668733bdcf6df9213a43662f76038636da9f030f2fad998662f5f8eecd23
Date: Sat, 2 Jul 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656765412
