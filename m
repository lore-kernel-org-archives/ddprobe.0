Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E2B15A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 01:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656899812;
	h=To:Subject:From:Message-Id:Date;
	bh=6l0pdhvxAEY1Kyw1AbhG2xGhlB3wlawoPH3F2MHDXk0=;
	b=GI02osV36ZiFO0TAZKSaqpDUaWqlHeJzM8uU/pmcWQpRtmWl2fgb7NNfA3W+qtGh
	vmEuGS7l+OIf6b2hJ7fhqgX8AgzKActezxmn4yd3daUfDrPcx1r/NhbhY1ja8l+10Py
	EedvHW3TtJeQTkF6sxC8njdqMjn2Va7Hb9UOxQHE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656899812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6l0pdhvxAEY1Kyw1AbhG2xGhlB3wlawoPH3F2MHDXk0=;
	b=c34FbxPpRFlbkpBLjD+KCkVkb4ZPIeDh8aLtyrdvay7bQ16wzr8DiMPwlJr64QgD
	+C5K0RqCzQUp2UMlGAGxaLrSt37gvfo3RyrYWpPQdvpl8sw8ALk/URoOWqmmiYxDduW
	Pppo2NvFtYR8L+VrD59OGiaqIluWzMDYOFY9ehj8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c6ecbba2-df6c5fa2-6466-48ff-8958-86f0b9bc33a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 383db0196c030d8aa408ae7a6de26b97cd2aebbbcb560aef1ff6bd4c1d1a889e
Date: Mon, 4 Jul 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656899812
