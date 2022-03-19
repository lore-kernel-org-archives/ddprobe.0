Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69AB180
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647692484;
	h=To:Subject:From:Message-Id:Date;
	bh=HxuerfexvRfuWw0k/xYlxx/zySmoIka2GNEnP/L+SsU=;
	b=CDV7BqhCeK9BVhyxusDNjAKE+DkzV/YIW/9Q0s6OBjkpnm5uzf+PF3Q6fvjJBeO7
	rHUb1fCXt0/gfPqrL0NpbAr/MTOz/YreDuOY70tRGE/YFN9JiYW2OB8iwYzuZNEDLWe
	3QZN+MqMNLgFdN6/wbFifDctvAD06IV34ZQmaAUc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647692484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HxuerfexvRfuWw0k/xYlxx/zySmoIka2GNEnP/L+SsU=;
	b=SMKB1rRi15b+khJ/0zo+9nOjSEi1E0DQrTiNLDjY3ZdwkJEo/UFfkWh6qGdG8U7P
	jnnlrFBkdJxXvssP33/U5vODkuoJq36X9hSqmt9Vb/GflFLs2Rc+QZE1RCodGPTIrN7
	C5V0fLwt3ywXK0Z5Js82ma+7iLH0bjnfstapHFnI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa220107c-31f6220a-76ce-4226-aac3-4352e9fc10db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a55d50083d9e708e7477673b8c6c5453fe49f492a6aaaa8bdf97c88762084ca
Date: Sat, 19 Mar 2022 12:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647692484
