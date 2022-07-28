Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC9C7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659021052;
	h=To:Subject:From:Message-Id:Date;
	bh=XflwhbIoP1HVK5Xhi23XBSeIqIP3d+zl5eJRWx7Dt0g=;
	b=TyQovSE4FQDSQdPDsAPKd72G/lmoWKKGzlPZXXRvQZ9RfRMharsU1DFD28qA5cx5
	SRtXvFJBsZnKhdm61QHfQNu49bee/KG1qd6PnpqaHc+JX3rMo+QbhqfpW+Hza2MBRVj
	MTcmuuT1PfzSAJf4ldO5Lw7srPTjB4mLMbnB333Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659021052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XflwhbIoP1HVK5Xhi23XBSeIqIP3d+zl5eJRWx7Dt0g=;
	b=FJu4xoYJswsQEQfsyndTNi2RFL/ViyO0gTdKg8Xo9wmydfISggX0inMYpHwh6vcx
	3kiYRF/RBYz99JJ/eLHvw0b8lGIZ+QPNkUVcOshuGpGCZuR1AbHDiuwC0XDZwBKSyNy
	YL37/6uRqRPOFGAw7xBc30RTXRObDl1sspMJOmgw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182455c4ab5-2b240d14-9972-4470-96ad-656d35c760b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 823326db3c481a1ae03010f4434bed2bf86ff48ad3e33cbf4cb86c39c9fcb32c
Date: Thu, 28 Jul 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659021052
