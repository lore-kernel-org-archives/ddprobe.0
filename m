Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01DC2F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 05:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647495085;
	h=To:Subject:From:Message-Id:Date;
	bh=SBgEHTKUYUDOydaJb9ifGnIxmEHVgbumhN8WG32JqsY=;
	b=hNyEKYN5DBNrrKivHiFUE+eJsec6UxN0s4t9km7RrGHyNTGhwlKnBZLcMzGuUfDK
	5jzodOARaQsDYPXTOJqQe3SlYHP8NBfVuI1PK79pYtrZIa1OtBYIhV9PQPo0ypZI0np
	l5joaKVCEGXHNmCBw1gIMx5kd6vcvOSASM4aeIGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647495085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SBgEHTKUYUDOydaJb9ifGnIxmEHVgbumhN8WG32JqsY=;
	b=JPWGnffrqF1ERKe0NX5KCtY0eF+MCocXkeIKoiuIoV36u1il2PmPQS41O58TfD8n
	wTOz71BiDWaAJNlworjpfESuTBMsyrqjlmyFOf4i+1WFCsG9awP9lYGoFa49Xk8xHFF
	0YYK34wEzdvvyUD/jZ20rrhpkAXaqBoqTZ8tisws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f965bfaf6-0480f680-3257-46f6-8218-0655070fab7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55ebd16e6c16e4d11b111103a6a9f4772068a3a427cc299dae6222bd0cabc8d8
Date: Thu, 17 Mar 2022 05:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647495084
