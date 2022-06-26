Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9BD7C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 12:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656248212;
	h=To:Subject:From:Message-Id:Date;
	bh=gJJYoxbCKAt+nEBBiEZaX89IAv7i9erTybbjMKzcZQw=;
	b=GR9PvGzndt0yiqE/Yk52r5vcct/L+ZYw1gDGOnDUsu9yuiU20tdF24ZMEguHMnzG
	svCKqaw8qQ5ky6VMpByk4UrMQcesTXklLro45iwmgXjFQyf2z9Apw/3rdQr9oedaAbj
	JB0d336O4QdqZnoXevrqb0lwHPrhK0lHoNvkEcW4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656248212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gJJYoxbCKAt+nEBBiEZaX89IAv7i9erTybbjMKzcZQw=;
	b=egkR7f6sInaxq0NlyLd/75aJiADN/mWzfHQMRxU0OrQKFhfrdP7HKHIFGOFD/DYv
	2VUrm/yxoi7vrVrZr60YkqQ1nncfkiSgouf5PSgOeST/VYj/lVsXu9Fxf+jduJb5e+c
	j82eGxvrE2UP91EIlYFBbLaBdLNM0WDx3FF8jCAM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a0161b16-f9023919-0b32-4ceb-9f3f-7d15ed0bcbeb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ac383edd52b724c7f11aba7b32f25555e5d5bc82924345c7ade7eba0142733f
Date: Sun, 26 Jun 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656248212
