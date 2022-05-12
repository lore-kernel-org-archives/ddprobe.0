Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F13B733E5
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 17:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652377439;
	h=To:Subject:From:Message-Id:Date;
	bh=5Q7oPkMbixDylZu3CxHwB2VF9BElUi8Y3xkaUwV8qKY=;
	b=NGzF/wo/f63DHOZXMjDyeSdJkSZ4Qj+Egt8RsFLUbF5xI3+PVtFVsep0yPq+dqn0
	ZB/dxBFUs9YqxBCDgURAGNpTkrDLITbOmbnN3FaJTo2ItMa3E5jVZURbiFeuMjCKQyV
	RbOvMfmFqxH1ooOOaV6oMCjg3a70hmlOuKM70r14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652377439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5Q7oPkMbixDylZu3CxHwB2VF9BElUi8Y3xkaUwV8qKY=;
	b=Th/yV9yFABCr9WfM1ZXe10itt25kNRz0PLnnOmBQIv75DaREjjQyxIY8xbEH3XTT
	VZ9pRRO3B65Pn6L2lhAJ10wfYh/1VV1HgLNtuLECTRaLtXmEGzaW6fTJg8jh7clY+yf
	8OskVMK9rJBticr8en9sH1b9rTHTf53Ykcq4Z250=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b95ecc54-242998bd-4e2e-4a1c-8550-40f4fe9ea70e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3596c75bded90a46cb8809945fa952bba53662600cd25cd2790bab3c42c48c3
Date: Thu, 12 May 2022 17:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652377439
