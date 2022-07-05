Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CD02F5A
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 12:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657024012;
	h=To:Subject:From:Message-Id:Date;
	bh=0pWSIIi4QCs4WL3q7kcnKNUmbrs9sVV63rzW4qdOYpI=;
	b=YUdL6e6zfl2xMz5TUXxtW7wfKKM7Dz+hSli0mLmQWoJ/d4b/barwsV11voNAzbKu
	GLRcEaWkRtdycNIn3JJwHw7BoTQx0+Z/Z1V8FWM0WtUFsZ59/QlDsFBntsNtaetNrqi
	DnhdjOyMuzP7FcRTJacJiUrIUkiSI+TPh6qx8SHE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657024012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0pWSIIi4QCs4WL3q7kcnKNUmbrs9sVV63rzW4qdOYpI=;
	b=Yy9ycPZ59NvjVLTbkUJuFVCB+9Lsho4wl5MAZ0kyxjLU2cB8UA+OxaE5iZ9ZkLfQ
	cTDObsEaXMEVGjY75anAkUh2aw46qeA8DzXhJDTrdHlNIWIhyDbfNPkpO2wWqjE+dlT
	i6lf37XR/R43tZkgXvxN1iehEmTxDYrKcyQnYACI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ce53e01d-3c351a80-bf87-4e13-98d0-1d5667234801-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ad7376ea467430e8cb213e9f33a90b6f36431c546fca35b668b9456d0da9f57
Date: Tue, 5 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657024012
