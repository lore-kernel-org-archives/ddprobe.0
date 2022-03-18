Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A67E48B7
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647602785;
	h=To:Subject:From:Message-Id:Date;
	bh=n3wsRBaYGSMjRdS7YeDHFm7kbdCN8MIa9Yog2AjXyEE=;
	b=ix9Df2ReSUsGpF0z7D1jsEsXTTMIIKgv2g/jfYvUKbnk8vkCf5VnJJ/jwdGfZ8bi
	/jN4qc4PcibKY9ZJzETCvYuulUJ8/SrhC9vivFwYBqNN+HKSNFeh41/dDhBFVI3fYOH
	UeO0W0jy5mLUqUDoYukMfkn1c8JEmQgBDt1877gQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647602785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n3wsRBaYGSMjRdS7YeDHFm7kbdCN8MIa9Yog2AjXyEE=;
	b=KlEU6Y/lMTZaWBIojTCIjl7houADK3klHxlX7bZ/O9leiAOQrkRo0wqRl9Qj7d5V
	XWrsDewUYSBPrIkKsn8WsGS6pNTUk9y2xmHzJQ1mhqIK9Z6l5aySCitGpS9OGOFhHoz
	6p0jOk2m3LSa70pjLqyGrRasRPTJFPRo9GeGx8Ao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9cc75a26-52261326-3b94-44e9-a62f-83f6e8095428-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d51f6e3ea0ecd9ab673735065eac810d68bf74ade186b11dfbaeda9fccadd16e
Date: Fri, 18 Mar 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647602784
