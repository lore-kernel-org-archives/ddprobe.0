Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC14A44
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 06:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655794559;
	h=To:Subject:From:Message-Id:Date;
	bh=tG0pM8nh1iQ4+jmgLJV3SVPOugOKWyDhdGSWEBuukHU=;
	b=arteBlA5xUeqG9Yd8gXvXmdUgu5AEOtGOmgwt/jhrvtTvBtXE4NvfVmWvFrDofz5
	u+gJ0znsxL7/+I5vI8w5WBWE8Hax1sOHAJ2U88ydgMIz7oR9hc+VnhTTk5bR5BiN5ET
	WhZCDw7lz468Y2jC45DmsomPgd8zNBJKPSiAKSXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655794559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tG0pM8nh1iQ4+jmgLJV3SVPOugOKWyDhdGSWEBuukHU=;
	b=XO5v78yGL1rLuFdcWjE94px4SXaCE8GY4YILun5uxF6r2vz1zknayYe8bLBGmjSZ
	9mM61o40Mw2Pv4MDSPMPY2n5Xnqh0oQLo9KysfNj2IeyfISwUhOyvI908x2Ls7dfIFB
	ebp/yGKKPiPBbIK/L7FA7IxZT4di8lYtKFzQwa3g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181850be8f6-bd11e368-6014-45cb-84bf-63843da311a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8a74531d5cff5d6fa5c82dc1b61be11eae6e97ba003c7dd3a5326b94c77efd2
Date: Tue, 21 Jun 2022 06:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655794559
