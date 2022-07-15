Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2A46666
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 05:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657864012;
	h=To:Subject:From:Message-Id:Date;
	bh=6/vzTPkgt249TdQD6dXNIwH5VqQy+P515M83aj6slVU=;
	b=Q05HKtxJjysJgZJS7+KPTTPFP1kLzyI6FjVH1L0G2ETZ1Gy56zTe7T1Cd4javlFE
	x0oKuuvtywo5yAcPVjjKg7aabg7gIXL/8TDCk0E/LSlP53I7BTw9Rf9WZwM0lQl5Lil
	doSMHXrE8Ro4YQrWlxoq1P7Xu8g8LefWHMR37oTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657864012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6/vzTPkgt249TdQD6dXNIwH5VqQy+P515M83aj6slVU=;
	b=G6v4yUWpifpcQJl2KcIK8RHF3gRRblcZtLeo45nG3bdmV2zZg+KT+gN+sB53nY/D
	9sTrSW8frwN6KFWbeTMcv2TlZ7kOzzDSiTiVK+KkGZbKKwLSoeYZHC+9ojqSQDI8QlM
	em5HfX+74iTcK+/qfTaJAmVOyCr+JQ9QYQNY7u0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182006541f9-685e2165-582e-455a-bf37-36414bf070b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c84042062ad0d4e441c9cfff2ee962b12fd1e7859d52cf29e517dab239bb25de
Date: Fri, 15 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657864012
