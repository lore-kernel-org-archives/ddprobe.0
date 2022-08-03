Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0D37F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659496852;
	h=To:Subject:From:Message-Id:Date;
	bh=33vHlkUsC3VeS2tsnh5VG/sEO8a4I+ntAjBfaItt2B8=;
	b=PztXwO28yJrySI7NGIawLTJ7RvDs2kbJSMPRNupyqThdqyjlUpLOn5S1NADdNNM/
	iz927ABTeBAp68rGarM7w3VT/vX0GzP6JU3UjHjzgDkmV+A5HAZ5pginXeR3Z0H6Y8u
	eqJx4Vtok3B+iaSKonjQAUaFYkK9OL1mYopw5xKE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659496852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=33vHlkUsC3VeS2tsnh5VG/sEO8a4I+ntAjBfaItt2B8=;
	b=WDNO3WRB75rOBWkFWOUrJq7T7laJ+YyIP+Sou3wmtJis0Hmex4LdKWk9w/Lxl/lV
	qUrfLagfLjcaUemDWMWNHpRn2oqXSToA8TpSEQzjEJ9zNLwQ9dliaRyNXznRtUHfX8l
	IroRkl6IDrEz9vlzEnBsHkJSHw2dXIzj5yALKnv8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018261b86c37-c553c44a-1e6f-4ec1-8a4b-402a578173a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf422b08c50340c44cc50d54de2be02213cf53d82edcb31f660da9820c28eec4
Date: Wed, 3 Aug 2022 03:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659496852
