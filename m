Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6863D370
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661070652;
	h=To:Subject:From:Message-Id:Date;
	bh=pmNfz2aiqvP5UE4yb8tWdLYMwiFwxX2GIzsXU/hChBo=;
	b=LPRD8AH8M0MqFK1uISA1NsmsT7s0rc8mf8F9sW3l/MNAmdjXE8uKXoOo5/8hmmHC
	4Tfhe6P7wJgbrQ1pSBXpa/txlEaYJU5x/ff9MdgTpaEjQlYjNewSNikrDD6cS7ClO2p
	6drw7/OtDUQwGP/4y0BZP5pQrpbkmgHR+5KSq2pA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661070652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pmNfz2aiqvP5UE4yb8tWdLYMwiFwxX2GIzsXU/hChBo=;
	b=BYV7UNpc7JNODPCa8bll2nEqmQKaJtCrDKQzoJvVCfrBavus3k8ywkmQtnJagqjh
	hHnE46zuLKsB0+/ABg9BVoX4KUo0HIEWxkSVXQjXCy9UwW43gB+iG2pUCP2ax96cr7H
	yKy6siKY98i/yE0Nxac5W44f5ew1uCjAXYFcohcQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bf86b480-9d1ead41-382a-46d0-a225-a3cb7ed97d5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c61b0945fef8c26dd2180f21b557243541772a2d35d00d63c75522f5febed7a8
Date: Sun, 21 Aug 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661070652
