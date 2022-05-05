Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E25C7F
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 05:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651729018;
	h=To:Subject:From:Message-Id:Date;
	bh=1GIr6EjK+HJVvVP8NIPVQSafNf4/1llEgHFXdax/NT8=;
	b=BnlAvMrvP4JxwQzkz5OC0/pw5kVpERB/HYNEoJSNJD0IeTiXowCpiUXADqMoH4pa
	U0p6zAoMKqKl0NxxLKG+TVap+IbASBFOtq8Y1P7KQwTAl9zieW47CzlwEx9q7hMC7jo
	pu9DiEoOyoFGYaRS/mf+pwBrvTA/LVoI4u9kWT/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651729018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1GIr6EjK+HJVvVP8NIPVQSafNf4/1llEgHFXdax/NT8=;
	b=hoY8OvGorEIiqgOIbDdlsHhViNQ+OwDZHbjMBPij5FZ/aXiXTyRi7M0HmINsK+gm
	fow5FXelZmmYZ+2eP7XXHJFbPdZXAZ8DRYOANX/Myf8A5Nk2xxbznYnzHBzK+GsgQDr
	v6oWs8Ud7KjO936/1+/LQE5sbHga8n68W7kbkXq4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018092b8adbf-123b866c-579f-4430-830d-fb431dbc9988-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1de51b8d924c9254325ab5326b1cc4293c4343278dcf20e95cc2563c0e25ab0f
Date: Thu, 5 May 2022 05:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651729018
