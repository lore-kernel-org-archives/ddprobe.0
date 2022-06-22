Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A09E1109
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 16:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655916059;
	h=To:Subject:From:Message-Id:Date;
	bh=iCnuTxUcWMTmfEjQihGbOxO4fiolezz40EZ+GCEKrxY=;
	b=kfy89c9tWwLP0AGnhPBCI+jwaYbx6s99F91j1itzaIbNgl93TJ0xhMPee6HahqVa
	EtaTUnJ6h6nsmYAJhmMFWspHm3xgs8V7weTj6MwD8y3eSls/1t9DYXWnBuIsMlMKuob
	dSzvjFsJ3EtWnkH6RR3Ls4CnziDlFCwI6YQ33KQk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655916059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iCnuTxUcWMTmfEjQihGbOxO4fiolezz40EZ+GCEKrxY=;
	b=amLCBO/K3kYWyIg9S/lCvcJjqBG7Ez8T6FIgG230ZWU+CXjA+GLUEQ+C8FZgV3sP
	AZVX+nTvjwo5r2bgSRI+dPULcNcPicyjpi6OG10lLgN8yFUWgzyNNrtQGzMVfXRgsI7
	p/HzfmqYlk8eBo2IcKO4Z2aemluF4jWo4m2gQMvM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818c49dac9-04db3c42-9a34-4f1b-8e1e-3642be89f871-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 451875480a7e0e3b8650db091bb88cc00fd83ecd821509358ad7404e0f5fa2ec
Date: Wed, 22 Jun 2022 16:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655916059
