Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C97629
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 02:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653358619;
	h=To:Subject:From:Message-Id:Date;
	bh=tBjVgRENS2c1NofILh1YCNvHE2cJNqFMQS86fkXkAiM=;
	b=MtumenuBUfqTKltYMjINobKbtU8yFa3Yp2Uk5Ln1GyPc9NYK42YZ9nDA5KEaaDq+
	uzvmiNYTP9bgpjvN3dZmXASxMJwk4Ea1YbbuEcRVI29GTr3AmRx9xDgNNJVMOfZDKZm
	VbfTAfp3+stt0M3MLhVxllvhVnskahHUUe9svtLg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653358619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tBjVgRENS2c1NofILh1YCNvHE2cJNqFMQS86fkXkAiM=;
	b=XuCauTCkL2zyokKtLX6cxHTC7F/yaSjPKO2UU6cWQFRjarTzJCYNMcmg40dAm1Od
	knZogjFrJyPMzSZHUaoGP6wzdct55ZFbaGV6eeoXT7lmz+IcVuwQWHuJYs8/E8ZayA5
	Rx0zqRdZXJlQL45m6N1UB34+JZjh0KiqeQE02Hlo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f3da6a98-82281656-c7c5-4b00-a375-f56e193af914-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39c2818392b06c9287919bfeee5db010540979bc695561da7665202ffe868e3a
Date: Tue, 24 May 2022 02:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653358619
