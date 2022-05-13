Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B2620EA
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 03:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652412479;
	h=To:Subject:From:Message-Id:Date;
	bh=gVAH+ZPTtK08YzIMoBODNCpSRWBB//XMi9t6anZMtOg=;
	b=kT4OPswFU/BXMwlyxvkyroUJW2wPa9RJdJqOfOiZCMdYmFbX8slXx3czB8j01gJU
	O/S4JF7Yq3kH/Is179hlovwP7m/vNNqqQHepNRsQtnWNenZK+EA1bGFV63T2pO96tAv
	eUBx04nnhd7tWLKdy0wiEYN0xWu1+BdPLmZdEl44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652412479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gVAH+ZPTtK08YzIMoBODNCpSRWBB//XMi9t6anZMtOg=;
	b=W0YdRRXeiv5zPgQOJfZo/z3OIXfZoPwAACDKOcTGfmKzHEH5XM1xiLo231Gn6Mku
	pbg5XJmdiNVPIV4gjFmOPmgDl8IikXNr0nm/nOaOG4CYhCs+SN1EOuxz2pzW6pXHgYE
	Tev5phAmOturgb7EVo5fLd1b5Kmnf5gQo7Y7MruY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bb757716-b33048bb-c320-4dc8-a7d1-55d34416906c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa685f7d9fe88da1b1a59a11fe2199c3f117502ef3cc6fd2c071d53ec1cfb59b
Date: Fri, 13 May 2022 03:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652412479
