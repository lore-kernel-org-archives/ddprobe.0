Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2EF97EC
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 04:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645588885;
	h=To:Subject:From:Message-Id:Date;
	bh=Qo8YKkrFhvH4B7MyT2U+zVWXPa6otMim455+EqRT6kA=;
	b=CCY1AvX3DpZtXUGOtoqnWRvZd0iWQLOTReWdjJQ6zuK6a43nI7Y+CZ3XqUFey+p3
	1nF5pv0vV7XZ/NBvXgYDvg2lX+u+eIR7u7M5wBe542/StkBgJipP3nIsrUlWX5kDUD2
	Cvf0f8XGGzCRrHB/pqdDmT1B1pF2FE+XMoVrkSOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645588885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qo8YKkrFhvH4B7MyT2U+zVWXPa6otMim455+EqRT6kA=;
	b=hfrwQSWhBcYYK9nkwIDvq0cMIX5CUOVFzvuYUxqREGVQymmbyCxHCHwCV8K6Fms7
	i8rOp4SiJwgj2BwhW6U6+8Y0zOHTaPG1PhaSHridAxtTMPYC9YFZcrQILbWK8R5vJ+B
	E5Xgmi9RCwq8J4loW+DH9y3qBeXhaVeioMpcRD/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f24bdad3e-f502023d-4bc4-47a0-b254-b5efb02a2feb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8af5ad289f3c6553957cb46f7ddb861f2e34bbb109ed489920215ddce8e4886c
Date: Wed, 23 Feb 2022 04:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645588884
