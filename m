Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCF2317CA
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 03:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651550038;
	h=To:Subject:From:Message-Id:Date;
	bh=17SMotDh5uPEyNdcWuMpjKbhlMRdB68V/6NU5CRzl+c=;
	b=O1PlTPPWICPmDJkNk9Z+b7CV4pEnRU6OFRj7XH970AkyaVTsedTGDNg/um5rHNfP
	kZKMB7RqY3QZfSIwc/4r9CpYIP2QoVjk7/1j1AYNnMq68l0MXykg1v60QUNo1zUXB/0
	0baq4qjWrMjfTaco13TlFFrIqk8K04+Y9YrvIS9s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651550038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=17SMotDh5uPEyNdcWuMpjKbhlMRdB68V/6NU5CRzl+c=;
	b=gVMzpzdu657JBlDCkOyIZylAIz7LIXP+F0a7HBhQzek7dg2bo/XTSSpkyQEgy9Ye
	m9hFxSQDlX4ftbhWNE3gbMt+z5iWKcH7wv3lEl+1J3ulMXxRbiipe9AsUZFs95mLkAH
	L+QemLm1dVugFPFw5Z209MD/zfeSzxw+B65ow6Ds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180880da8e3-f95cbbe6-cfe5-45d2-bed6-9b739e90ccaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 560ed60ec5b2e08fcee694d57898eb88ede22a22d3ed12cd7405f820199cefb0
Date: Tue, 3 May 2022 03:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651550037
