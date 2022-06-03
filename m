Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05033A31
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 04:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654230479;
	h=To:Subject:From:Message-Id:Date;
	bh=WD/Mnz+OcocDi42IW5LAKcVbxoNuvOGKs7Hq4h1edLY=;
	b=MuVLNCY92T7mbbVrfoTOjB4lWgnqLqIsgckz+0+sVb+wXwW6PlMCePdvA/SIMX0D
	QPphggr7ErpOnodwfJuBLTsZsQbowNQ9MucefPXWgYCo8rsBa8TeBqbg+HaUtShRVx4
	rvFKNqX4hVzkAMLVmxDVaG7363x3+dAb41uk+gw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654230479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WD/Mnz+OcocDi42IW5LAKcVbxoNuvOGKs7Hq4h1edLY=;
	b=TGieEVay5dWNDYFPIiRht3JEtRuU9bsjnfE2kudRhRdU8qHp8ZPmtLnlz+DEwfUL
	5Zg2j1bafHnqvQN/cAaJvBVsRnRMDUIphzHRJT4GbCesmW4cJrzCc0dWSDsXEWNoTeF
	NV2PiECbXqvXIHD4l1QCOCXPMoZoEsI/eqeiVfwc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018127d1f18c-1ff37871-1972-436d-b431-d544ee7fa3f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c47175c6ad21b374919a59c0177a772ee4e3e05c19d3548506a7e89e30c1484
Date: Fri, 3 Jun 2022 04:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654230479
