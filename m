Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD827B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661109652;
	h=To:Subject:From:Message-Id:Date;
	bh=HU+9/22cvIJMzzC5/9Xpi+pm8gTOqhARNwfJmg0SK6E=;
	b=Amfwl7cfOFIWTBa24N/7uPRcp8GNLq6tEbUl6sDJb9QxONdiShK54Whb9j6HLF5S
	XoZiRD/k0Gaq6Ncd5c+YBRuvdXoqcEpQrgAAbeUUeVX72tUhiLmoJc/thmV2nACdmox
	P4PguwYj/Lw5PAbKBckAbqRazKkDQMoJaV12tdCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661109652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HU+9/22cvIJMzzC5/9Xpi+pm8gTOqhARNwfJmg0SK6E=;
	b=eW5lrVEDAidS7+0EcTEuJK//0sVvXmSy+Tu6aYnsj6FiPMcz6RvGrtzKwri0qAtC
	81dRA0FoK+LcTUW5nDAS5I+mKeP6rgyb6/mj2g0Qrh/rCYAadGLFrQpGK36HWEX6fmR
	dGZ/CQzYQUdXVedsvG2IlcKlqFzpPCO6434Gd6X0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c1d9cc62-f6782ce5-16d8-443f-a42b-c86164e07f19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2f011820e1e5d571f2648823f6fd182bbee87f24516bae25b8ebf3823b06a65
Date: Sun, 21 Aug 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661109652
