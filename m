Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36057C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 09:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654852499;
	h=To:Subject:From:Message-Id:Date;
	bh=9zqvqQ0W8hg0kO+saUl1BDahnGuwTUyWXs/esqfkYR4=;
	b=er/bNgGfEOwJwIPijxXPjVLdpuCk6g5M1iq4zdhosJ8qnawR+ZkeHjxsGYmtzOLe
	u6LiHLMFOpXcPIbPxnC3l/llw3zGg74DM5oc9kFrnp7WRypZF4qha9Wg6v9iEUXLnkC
	HUZK/mlGcBpvBTDHtXQYnQnx1thOMnlvfWnKSVFc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654852499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9zqvqQ0W8hg0kO+saUl1BDahnGuwTUyWXs/esqfkYR4=;
	b=kECIkoyQkQMc+7SVGuh0WyTSUDcUsSRHPboLpT4UOj++mMZHFAjj7+1Y6h6DZGGu
	3IjrQrxhup70Bvygn2Jj/jNeFkd1cdTLWV79kS3q+Yvy1/NugfMeEzDwfw5z9HvqOvE
	Vv8NuW3JlFQVAdFfY/ZM6QwVdIoGG/meLoY5aJi4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814ce5370f-7ea93314-0619-40df-b428-fb44a322f209-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72afcaf4394d9b1a7e968d0e8a7bc12691d49bc8bf23ff1e23b90fc9015473d8
Date: Fri, 10 Jun 2022 09:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654852499
