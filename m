Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CEDE161
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 00:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657671412;
	h=To:Subject:From:Message-Id:Date;
	bh=axJvAtamoosizVBeKEBvEH6dWfxxP4OtOxBsou9punw=;
	b=DSxBSlFADVLmbyo0+/pXkAOK6WkZNvskGpzs257BQlnd+umrqW2LYhcl5uhA9mqO
	29txPlzlbZxxlrhOFB31MNr+vD/LllRK5j+g8EOkf2F5vxKaBMZGrvAYYU+yxbQ7RU3
	aUeQ+FAegtwy3+Ja3uUYeComK+11BUi09a6nLeLs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657671412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=axJvAtamoosizVBeKEBvEH6dWfxxP4OtOxBsou9punw=;
	b=O78rnOBaqFKcFqUTHSaAwAmPsRxflJqqmKR33Pu12ZTZdAwZOLmXHggZyiY94Aej
	vZxNLqe69oRp5BCqHDkWnHmmfsC3I7J4pVFccDdKOR2gJWW2XDegUyM/0Zv4TD1rr92
	gY8lLo4ogcsGJHidyUTG73J84AUKB4GCn22Bo35k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f4ea6a49-0dfa1711-fcde-4768-b2a8-b3e2802d3372-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 857d64210d3758ff59d94260344d33c31bd50dc4273b2b1097843b6bb4a735cf
Date: Wed, 13 Jul 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657671412
