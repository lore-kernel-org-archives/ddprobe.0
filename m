Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175C32F2E
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 19:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651777438;
	h=To:Subject:From:Message-Id:Date;
	bh=d9e4b2R9ZnWG8xCVyLcjYLieF0l1YrAznpG+rBcQMR0=;
	b=cenI+uXroqwxqJgPwwFWUZIMU3ssYQbO3tVTX/Ha/cW1xZ2Vf+DetBJoFVaX2Pw6
	pu5rsXPsJ7U3i7xwTwUu5zEr2Wo7RLGWNlWkn+AOiVwR+R8zE06irx7MSndOQBUgu0o
	i/FdVjv4fxcZzarAaVos5J+98Vk+Q0tvngbqI5us=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651777438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d9e4b2R9ZnWG8xCVyLcjYLieF0l1YrAznpG+rBcQMR0=;
	b=jWYm1UtCppDQGk4IUN1kx+vxqZ9dBr/k6hXwxKIFyH8mIkXAjTL49qf7yVJ1qBsC
	veeWG4mV81JoU+TzeAupsx+SN0FDGO0o72Xoy54RDK5K34O0k4k9h5We9fzP51V1Ok/
	dOP8nqIGiFloRw9rHLNKZtNZjP0WmjDLyYNr0AM4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180959b8281-2ed7566c-1f38-4ee6-9508-dfb0e0a58fe5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b741ab3c4928e675ea539fde70df65af735d4342801016b0113ebb67266371bb
Date: Thu, 5 May 2022 19:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651777438
