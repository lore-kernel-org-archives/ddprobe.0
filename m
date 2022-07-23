Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FAA7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 23:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658620012;
	h=To:Subject:From:Message-Id:Date;
	bh=x1AxqIi/NZAidO9rPFWCRNtjIS7vadvLxtjDwfzxJyM=;
	b=ccPzKzwjs8szsRrv6bBLat/DaV3GDatpYi31lE02OUYvHtPmkkhZqDGq9EBBDTlk
	4nr+1GihNhfJBuCnjBI0odEKk7QCMB8n8+P4Gz5wyp7lz1xTSv8FFxFxoT63Msro0cv
	Na6b85C9EZqm+hMNKUXLcn3FlAi4VpP9TEyejoSs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658620012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x1AxqIi/NZAidO9rPFWCRNtjIS7vadvLxtjDwfzxJyM=;
	b=Yf/7b8YiyeWfv/lzF3o54X2mrClsHv5EvSMR0il6jysCMp5okvpI16wfwcRxiLxs
	0ajsh1PKcC4uYzU1gFgJIwuLt48mbtBRGLQtAmiN6HO+QBfZcVqNypGUvFKjtXaH0Ty
	Qv4a1GnModjBC3HhIejNpcRN2kGo+J1s67rgZuDg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822d74e733-5ae6d512-ce99-45ae-8419-869ac9e5c55e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efbf0690d021709e20f824c2ded203c2375e47fd229dae255cf12370745dc848
Date: Sat, 23 Jul 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658620012
