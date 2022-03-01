Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5589A5CA0
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 15:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646147484;
	h=To:Subject:From:Message-Id:Date;
	bh=WTBMVxpkd1jT6Gs2bDBLGCk4LLcE0GaRrg/NT5NL0GY=;
	b=bHm9mL4pMF/Eq++CmvInfpRR7D7wWxu1ja3dY98UorMPyqLMEsez3uE9aKsPIl9v
	KPXVeQCxk2NTpSSQb5VQpaYT2SNwbQ7XWCAFtmiQgs5SjHdtbFzTEz+YkcD+3F0wokZ
	I6WTtcnZf9CY759LeL5VxLTJ/EieS76tFeE0Y4/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646147484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WTBMVxpkd1jT6Gs2bDBLGCk4LLcE0GaRrg/NT5NL0GY=;
	b=ORDT+x/dVUU70kmFSyDioL4yN6P+gotgIzZ/+BnG/6z8UmqH63JnYB6jfsBP/NS9
	0GOcXY550Ygmuld/6BOF3gD3gAIEFbhDb5VRkpGq/IeZKm7LqVkFzU/3g3NN2Qqyxp4
	C6aDi+xHLX6DQw6o1sNejrvEF3iDgdgvIct107yg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f46093c55-87f5d328-5c8f-4b52-9112-ec8219cb0735-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8e54f66d0c41b072b8cc70c579bb5d1d71f2d8bb7d4926ea5225345dbf3beef
Date: Tue, 1 Mar 2022 15:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646147484
