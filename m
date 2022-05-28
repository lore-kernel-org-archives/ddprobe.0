Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7459A23DA
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 13:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653743459;
	h=To:Subject:From:Message-Id:Date;
	bh=6genyyWeevw7rciHmtZMYH6nO9RTchWfAoRFBMpJPl0=;
	b=G1+DztMQMBPBxbNu+Y1GfIGSn0j1QK+vgulR/sLVMsOWJw3Nm2F7n34+sFYrylfK
	m3eXvF3MkoYXk6bX0yD4+60Sc6gNIBuXj5mmXgHuyb01PHFsXCnkUaNXuRzRfyB2fUH
	PPV0iY568ZggQjqjE2IWIfElyjndXHDCbe+ZZTNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653743459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6genyyWeevw7rciHmtZMYH6nO9RTchWfAoRFBMpJPl0=;
	b=cBtKXF1bCPJa5MMv0Z+W+yfJfiBsK1ORNvhiuOlA9h/wYeaMA/JSobLF2Ldd/YmR
	NUwfKwPGeatPtJGWFWC9+uOuPYTdSMc9v8Yh5cdGqV2wDMXhcD2bD/66Kzb/gjHR57L
	kwaSAxaCNDv+x8CaE0b9FnRF7s7BhFwAowxj9pXc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810aca9c21-8926894b-bdd4-4b1f-9dbb-34e8a2f8a40b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e7b456264c99f59cdb6a16061492b464196cc6d044905b042d7ac6077cfcc31
Date: Sat, 28 May 2022 13:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653743459
