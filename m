Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190A710ED
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 03:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648093078;
	h=To:Subject:From:Message-Id:Date;
	bh=4Lp+atdDdG7cchT8W3bmB5/oHQviz38iS4qs7VajOhg=;
	b=AYTiV3hteJPgrqolYZ1MHYpwgKm29tg4Pl36Vn7RIF7d7yXOMfTluOKePyGqEOw1
	mnQCZeuFTqNJ/+2ziZRrVlGaks4MOHtsTPbfs3EUMqXk4oOPVEAuezaQTUblxD52G2b
	9g2yhuzZEgNO218O6htiKeHoFWiJPPp6ekDt0Hn0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648093078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Lp+atdDdG7cchT8W3bmB5/oHQviz38iS4qs7VajOhg=;
	b=g7JhYgC7Q8VSJAz+1qElFFaHNVXujNhQYFk64uAfPEsQVEu+i60ih+huTjTcodB7
	Lb4fwqB1sraTHMP3goyJCiHyYMA1dojMhMWSb2xdS4s7y8p6KruXkK1dJsSIy6ts7su
	ssclK9NKyJLln7sj8LQX/gqF92BpAcoX2K2qG3EE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba00a30f-fdb0af47-bd21-4275-9958-1b3cad74f6c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aca982ef20064d16269af93b8b8be5684c551ae0a188e3781126c9fb421edc95
Date: Thu, 24 Mar 2022 03:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648093078
