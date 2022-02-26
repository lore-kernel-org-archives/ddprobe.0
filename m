Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87DFE38EF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645867585;
	h=To:Subject:From:Message-Id:Date;
	bh=t79tx+cprkt9b+ylgzms+aRDqaO5YFrBOQEefTGrLwA=;
	b=LCgmKbIuGlKj42eXc2OFkoYIbN/0NMVtIgvZVC0y7ZMjmyui7oBNo78UwedDHbQQ
	tFd5jQdtbNlcFz9DU6ny2WZfUkQXoJCGlYqGBgyhdQfaE9PjCUU7CLYPTi1fmcGY/3d
	sON0lbhk8FPzYINIQ6QnGq1nRtwvSfWkfPsWcm/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645867585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t79tx+cprkt9b+ylgzms+aRDqaO5YFrBOQEefTGrLwA=;
	b=e+t+/DAiXaQ6vh+BylRURdReN++LN0ui1Fc5gr6GgVmZj4I858Ym1FRzrKl2AAtk
	X2FXFmxNX5EIXw8tqNxYepFadDPt/YCbpEXv95nZSt24lRTjqNLrmzgu9sHKLsOxv7p
	6RvbO+w7/JUIlYq1pnox2taEdii3Cj+vZs90zBYY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f355a4cef-f7cb59b7-249c-4589-9d6b-dc59642b5ee7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39e4bfcce0f37cfe32fe20a36a0a9d3197e33aee456e60bc10360904dde64ad7
Date: Sat, 26 Feb 2022 09:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645867584
