Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119E710F2
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 00:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652057038;
	h=To:Subject:From:Message-Id:Date;
	bh=wZbCOTnWiWiEMHX3wag5McamQO1ZF5h0VazM9vdQBQQ=;
	b=e2gGrvb3JsQVqdCwytIUQca8CyXN9JdvlUh3T7w+ONifsoU/eIeTRUkeRuY5rgmU
	xJRIc/irrpsq2ZcpvyHyuEZ4QAwIhUu1/nngGFOvCDiO2PmOwIbkOuN3rWVK1E+d+zc
	V4D0HiNTukEv6FwFcnsS6zIv91JntagLDz//lY/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652057038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wZbCOTnWiWiEMHX3wag5McamQO1ZF5h0VazM9vdQBQQ=;
	b=ZaOVlsxmVRSIyXPZGtMsxS++b5bJRhT4d7IrucNLmkJAwDePYIAdi56Arw8QZYoc
	2PVhXk6AUzzr9x9444r5/QJF5SXrcULSsdx2XSl8ZWxQbDUge0SKaKi/1De2xyt6CpA
	HDM5RYVcsurLsAhLa5QuKl02mrikpojpIrEeht40=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a645ddda-1f2fbca8-71ad-4832-99a8-6b56e86a9993-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e16836eaa73b574fb4766cbd3fd3b6f92e7846e167d946248c45be7a889fe9a1
Date: Mon, 9 May 2022 00:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652057038
