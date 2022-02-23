Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D56A56
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645618584;
	h=To:Subject:From:Message-Id:Date;
	bh=5QGqcbOLt+jipIp49yVHid2d5PqLCimUdieF3Bs3yoU=;
	b=g4hWWPIAj85GuUKZRi51AIyZ5jUqDuzXAUQiGEwZ+do+RPL1HrPqcrCb/IkEop8H
	WhKeGW/AGUar1jVAIKDc7DkckNFAOooBFWnLvUSsk/VlZkSigcfID9T4DxziV8lJGHv
	PCepxKANZEMv/LWX2H4OZoMOTt41DsBN3rUPErIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645618584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5QGqcbOLt+jipIp49yVHid2d5PqLCimUdieF3Bs3yoU=;
	b=YZFSVC5Ss6APHW65JfBUXcbUxaFJwtWeUuTUocHJWYYPFuemj73MchGJk+GYlmwK
	migcDjYrQIiardfTtYuMhCVO+sLwwoI8FWhdNtgOxG4gssFKv69nfi3spisTR8uo8R+
	b0cS/GKtXaC82YsfYhSjnm8j/EoqxbYCP/CBMZk0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2682dca6-20f7dc30-7214-4f0b-85c0-6e6fd7096685-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5a21bce94e003d6f233ff5ca6068003ff83e1bf196229bcaeda69874a5907fe
Date: Wed, 23 Feb 2022 12:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645618584
