Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F90410E0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 16:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654273619;
	h=To:Subject:From:Message-Id:Date;
	bh=E21kVKiNzkKDM7ym7Ha3qRElSovLh3jvQjUbYo7q6/A=;
	b=TV7DnJSNacM9SxPy+993np8NCKbj0c5CEkOlqZSP/PkDlmWRanLA0IP6rjdkqkWo
	B4nrjVpb8o50FjX+LMFNCQLnCeWzLu7RokPwdHDInRogNidvDrWk1jTRThDPJgR3FRX
	j/f4UIEBSzH8025d0UP2m2Ux1BCq03msRreWHkFY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654273619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E21kVKiNzkKDM7ym7Ha3qRElSovLh3jvQjUbYo7q6/A=;
	b=KqpOi6FxV2Vqzs0+z4yk2addcOwc5/ZRbBAbjma0Ti/tXdlRy7c/LyPm7ExPdg3j
	gAuy8+2h81bWmHP73OBhK5MYtd2H2svc9Zq/hlg8MV8gMZqj2V2lcOLLWFnrnnxnv2T
	3M8Yv94/yH6aXrxTDt9tp5RY8/Ns7DZ5alu1xnGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812a643521-3a840ed4-6d2f-43ec-8a6d-03181c187060-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b60bc7acb64427c2a14fec46a663bdf5c2b01746c849c97332d9ded6c2f2e54c
Date: Fri, 3 Jun 2022 16:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654273619
