Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D96923B5
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656926212;
	h=To:Subject:From:Message-Id:Date;
	bh=jMOz88KLKAR7MUTJ9O6cln97Y8NJAQKLrg34f6NpzRQ=;
	b=VRXQgCwXk/Lt3Lv7b3GBKG54CMidcjm05gzdTimVEBp3O9U/ZhC7DTihiDPjDOfV
	ocnZkf6jPVAmlUUm5ojuu+2nld8xViUfBOspnM+SY7lM/HrL8wxw2zYcM/OaQV1bvZq
	DGd3Pwxz+RKBRn6ZfKxTfE4+TpV8nKncfQQnojZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656926212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jMOz88KLKAR7MUTJ9O6cln97Y8NJAQKLrg34f6NpzRQ=;
	b=CbIJP6khVOPxjo8uw5PRz9JEyR8wlzPg5VsPI8wlan2/PzDvFp0UX6CWaxpmJcqU
	cX/R1gDSzjId8OjYQ3FY0IDW+bFCB43lTlqerRuh966kAn7C7G9BIej+nNMlEYjK4B7
	D5wVgfnQs38t3pThj4zaQL0ImJlpfD3z6Sojid4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c87f90a8-50920097-71bd-48b9-820e-15e03a5c0c55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a8445449b04dd4d638f7fa39a1f74171805f0b47fe7bd46ef426ffc37249205
Date: Mon, 4 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656926212
