Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961777A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646882784;
	h=To:Subject:From:Message-Id:Date;
	bh=lc55yhHbk5xXZo3XvKQTE8LJTDI2Vx+LcP8YvOOQyxM=;
	b=E4DIsuTggItPOlnISKGL0o55I+jZjobbOmNNKzGeeS2GRF3Nwgempa2EQO46SPBo
	U0wHr30mpVPbLI0gbkFtmBIHRMiykK01sfCt4qTu/nDBUr4g1PHF3AgY3TOhJ2Q/c+j
	yzSehDfwrH76dmHETI0zxhDrQDt/7xl/sllGdpOQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646882784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lc55yhHbk5xXZo3XvKQTE8LJTDI2Vx+LcP8YvOOQyxM=;
	b=PSgmFlE1N2/TgcmZmWXgURplIu1XAY3Lp+1GUoHnYkg4o/BynRJEilQU3mVxe5/y
	h/wvzUJd3/OocKL6PU4oQB+BhsNRtI8cRNV/Jp/W/uFnBAWzWLB4vaLdlGg5jau3I/s
	tTZ1tpyM3xveiwUJ5p4hd3xjKxuV+x7n6MF8PYEM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f71dd060d-a72d1110-f8f9-4c31-8fb0-0f0b54198f23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64ed59e8f0780ef077a3df2ca4a4eee0169d54e4f59ea51041e26ccfb1fcb20c
Date: Thu, 10 Mar 2022 03:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646882784
