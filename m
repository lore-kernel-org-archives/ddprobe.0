Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1120D7E0
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 12:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656506212;
	h=To:Subject:From:Message-Id:Date;
	bh=ISPUlEvQ6Zkxl6ywiCG6l9csY+xKj3dKYiGapHry9gU=;
	b=SaO6qd0/xRGekg+vfbiUVCNCi2IdgnEaRQlAocW8+pQpeMT11wr+rv7+/CGGLUga
	kUathc+n2uUiLf9OXjanVbKkNItdOMLPIBWgyaH5Yq3pEL3VChntv2Xsl8uqKXwCmfY
	qo0fEcdoEk5ZHIxulnIbXtIE3Y8n+vlgCR3NXu/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656506212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ISPUlEvQ6Zkxl6ywiCG6l9csY+xKj3dKYiGapHry9gU=;
	b=ig/6oqQ/HyO5IBMWaRmm6jBqhMmTqVrcBtBfZvs65s52CO6tRqMXPA7rTuKbHXgF
	MEQXqjAF5TeXlD1vW8uwycOVZrhPMgp9lhRQ6fDqlYu6My0VjHWO1j+ViHtW4j3COsd
	aT4KJSG+T6hEgwEm+HI9ooTcPql+AcNFc3bL9kDQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181af76dfd4-8fb132d4-81cf-461a-a41b-2dbdcac3fc23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15b674d40d117b001938b906f1fd4cb16ea09167326d3352aeb30e88f90cda33
Date: Wed, 29 Jun 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656506212
