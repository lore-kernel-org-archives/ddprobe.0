Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617B07A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 00:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647909384;
	h=To:Subject:From:Message-Id:Date;
	bh=NQWf+LpO5qIZFTBpfeMVp2uf47srYsOy4r/Z6vT8Nho=;
	b=LffwEyTqLVaulW5PpHBKWgTM67jHvlhTxtjlR+qYhqehk7HN6aYntckHnBJhBydt
	0o5ZnyreNy2FEoPfgNuqUcmrK9WC4JShoJshynXCTIvkk6jr2fV9W7CHaCas3zxCGNc
	cjlfWm9kQW/8Yqh7VF0fMTDAi50K3QSDLgfKfEJE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647909384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NQWf+LpO5qIZFTBpfeMVp2uf47srYsOy4r/Z6vT8Nho=;
	b=YFyuilV+IeIf8rzDo+D5ViNOzFsnYz+aLoOSkICuL3bVhN03+KeI0K2kzgNUpwSY
	pLsBBWOfH5Bh3Hnca4bc9oTI30pQRD5kkdyg2Ujqvx9by7A5P+V8nZDtTtdy4vVHT8T
	xI3+/F83VJIasC2AjqxMZ1qVDrY6Tha0uvcP0f9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf0db21e-08c24d95-b20e-40cc-99de-c81b8f051090-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68f33277de4e8f955f7f3ae26d874f5a8e3331c1026b4f7035ee85e3e8e64c16
Date: Tue, 22 Mar 2022 00:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647909384
