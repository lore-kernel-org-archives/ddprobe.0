Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D157F
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 00:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646871685;
	h=To:Subject:From:Message-Id:Date;
	bh=/9Em+CEyOIrdjHoOo5TQ1FtBAZ04H+ayhqcKL7MLeAs=;
	b=flOR36LgVm0nqWFJ73mk8yfTNBdxaA849PPryHUa08M+g4cZN93wRdafJ6ZzjdOT
	7/qlDpHxTVkwafrSBVFnP9dfgQftkCGfYxbgAOPtzI7aaAmptgsfMJpZ8rkXkVWeb9u
	4makSIvy2HLWhLfFfNoZ6uIwkYAN9RrbYELp7wj8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646871685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/9Em+CEyOIrdjHoOo5TQ1FtBAZ04H+ayhqcKL7MLeAs=;
	b=B7xg72urDr83yT40Q1hb5i0p0rTwbHWleBzrGa0bWgZtVg2t7IwTVCtBrfJniBTX
	Q/Poc8lLakKjb+9u7NoRsLqPwx1vqkDIowIsyeLllrHs3wgRdEwq3D8YaBp712nHzL4
	KMH30SlND3hYq8khaR5lru4au+SWlM515jm0fEDA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7133a6af-165d4f4a-e225-4cf3-bee9-e51c69cf42a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d79822cf588f7950940b2c89fb6e724ab31525259155c59c5d3e82bca016de92
Date: Thu, 10 Mar 2022 00:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646871684
