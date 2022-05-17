Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C9C1847
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 16:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652803679;
	h=To:Subject:From:Message-Id:Date;
	bh=adM/XSkyKFp0lkRWgyU+d3XSM2u8UHiEx9QJRErzsS0=;
	b=XDhlpjTOQcLh/T+WBtLRFB+9gOkx9M0FMhou9jVFd8g635V6WZssqFfC8mji7Tza
	2GawmlhNPD0fKsdM4xWagjPdx6spVMWTBdRP6OxhgV6dxSeNp8N37oGB54Muspcbc63
	oEmijtMjCqxLmmGl1q2s29crWkrtGVfTtXGVeouk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652803679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=adM/XSkyKFp0lkRWgyU+d3XSM2u8UHiEx9QJRErzsS0=;
	b=IvAR6TOJ8xFg96EO1dQypqYjtyERbXoPQBkjz117M04/iGvaNPJs/bgrtep5FkAO
	hFRWSHBr0jqkgLSWo+z9HYmv9AgGKXkyyyFdmYlWF72j6sZFGAQ0qtcKtBFT8cLHKOz
	BMdFPnJusWUxPw+Y1ggavJMStEJwFzCGnh2KyJZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d2c6b419-5c252935-0b4f-4c02-9b6b-5d662e8fb9e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f86b1c74d89c045d905ddd6b6bf24ec9e89baf118d3b77bd965a051e1908fbc0
Date: Tue, 17 May 2022 16:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652803679
