Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD9615A8
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 16:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649954218;
	h=To:Subject:From:Message-Id:Date;
	bh=fvKpTzUxdr/OxdXAjkLWAB3U0FtB2Kv5Wje28y4l2gI=;
	b=RQqsvc4x9EjpY1vQv8zQAq6t9vmesM4oMwkJMfrsfAauYci11oW/hclUbQfHAEqn
	nWS1bjvnu061F+62YqV2+jMKMvqor9sc7Rrb+8J+j+/8e7TBdkMXpyMTp7sOOh7PcQm
	xJkzNFuenYWYcg5G7T1GyeP+FiTCvve8H7HrK3lc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649954218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fvKpTzUxdr/OxdXAjkLWAB3U0FtB2Kv5Wje28y4l2gI=;
	b=KtAsW09kPY4WdARarFWEmuN70SWxPXoMpTkAfaH+nBxVQ1OaagC1YubXz7VvlqOR
	cuefM/pcNEoJTDQUEcjcSISA8xXiSOvCiE6tKYvAXqTxQ+3JQnRx/912YReD5r35TNl
	DmTjKsEQQgC4ZCMIkdtwAaprMKhKQc3AywWRUgGU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018028ef615f-8b807f04-5377-4913-a217-0c96775b0f23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53d7624495b9d5a2e9eaa40e3710123d68fecbc07b4709f098c524fe678673dd
Date: Thu, 14 Apr 2022 16:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649954218
