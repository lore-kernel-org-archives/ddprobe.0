Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374423D7C
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 22:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655762759;
	h=To:Subject:From:Message-Id:Date;
	bh=Qx4xarHZjxUdPwTCsu8cWvmwDLratW9y9q/XkW+YmBk=;
	b=VXsW5XXqm6cI4v+5RvBp8fNCS9GttzWMj7iszKyE2wQ83WWggiH5zKRXxciRxkh/
	GnkyJuMffwoP99LdjNjG81VPRAJMAnDiF7QIDRZBH9ZALUz90LDlFVQKsbN6Gw4rzUr
	2iTdC1gPByC9OcsC/r16VdWijLtBJyJHTE3X/PV0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655762759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qx4xarHZjxUdPwTCsu8cWvmwDLratW9y9q/XkW+YmBk=;
	b=eQ0G2DvRk3QmHuLrWpHhuCK6vEXZlXbCBtqFH+H4ZG4MFvr8Necs28zfde+MsbLH
	mGrD3l4gva+CnVxio9YhruIYg4zgr5aIWpP+8pRVRPengCV3y0E5eyIwl9Eyab0g01V
	eK5jEbFsWgrrlWFrafslkYKdNVqPZsAmgr8sr+bM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818326ae58-9131bf38-7003-465e-870b-2f47a50cdb70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44d092a5b48b7bca2a1ca91d719755507a131152a6894264ee0176c7f93a1659
Date: Mon, 20 Jun 2022 22:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655762759
