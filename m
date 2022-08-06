Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750D210F8
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659765052;
	h=To:Subject:From:Message-Id:Date;
	bh=3ffQtVst+QoTdmFSSlXRoe7DcasN0K4Ap+guy64Lfzc=;
	b=OKAxbU2VtbfUyVQT8LO7s57/NdUCUiKZqN7r6TrhyT1vQ047aar5Ham4gAijTtIN
	jFgOfZ4hTLkW1RknzXHTIOU59jyBT3Q3+hymbaMk4ErED0kpsh61fIMbEj1PpzAPQw+
	9lopbH/ZUFZPt11uWaCkyWWlXtJvmTF46OExB4DY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659765052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3ffQtVst+QoTdmFSSlXRoe7DcasN0K4Ap+guy64Lfzc=;
	b=K2Su5CsopQay6RdrxOqlRrpVu2sFJF84FT77bJbKZCXlS0/JeIfrySwStG6k+yRM
	JU/HXqu9ZJ7ZgvUM4hjebDWy/b0l1dXbR6Jkn6PdDPVgPwBnj6DAVb9fR4haZaVOTZj
	yz6Q+30wlmGJDXEgjy6TvD491b08J0nJaLbz+hRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018271b4d49e-c78b7ce0-7262-4297-b33f-d76d594f20e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b2274cc1f83cf6d63f6c38b542b93cbff5461c3a5c4aa75590c7f3781f1f499
Date: Sat, 6 Aug 2022 05:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659765052
