Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7574694
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 06:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655186639;
	h=To:Subject:From:Message-Id:Date;
	bh=nEhx33mYkD+1PJsKwjQJ+I2gG/Me6Aor52BaP0goUVU=;
	b=hPbTUKRzQPt4fnL9vT8Xm+4piS1tD3YtDhe15UEJZBlkp6yuTNIXnUs7tkMKDldF
	FFhtBexMYI4MqQq5Vc9P8Z18eRcNB7tKsddSvBoIRf1fDox0W3a3w9KwF+NQ/0CMyxc
	KxFdMGr+J1v61mZMC3zYiCNOLN0RbUVJOxQnTiy4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655186639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nEhx33mYkD+1PJsKwjQJ+I2gG/Me6Aor52BaP0goUVU=;
	b=fS8cu8AIGa4p2f+B0vbfs9hddWtIduew3ySv9VioGuvdeC/B6wrIKkIb8vekh/bz
	dxxa6Vshoc+irXhCMdQ+axzayO1JsrCxG57h1DZKE1mG/P8myx5+zbmux+chxB6p9Pa
	D6ygAoDIbSFg8n6PWfsfpvjY3bNkLOpcG0LU7CYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018160cfc961-7422b227-bb26-4aaf-b39b-18b4ad14aefc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 630bd12d607c39b84bf502a6af75809d889e173082588094fd92f937b877eb80
Date: Tue, 14 Jun 2022 06:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655186639
