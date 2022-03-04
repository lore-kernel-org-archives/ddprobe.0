Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A389D7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646421084;
	h=To:Subject:From:Message-Id:Date;
	bh=/mbcjM70HTeOuf4vQ5+erPpS7bXHbvfnRhNMWXRpom4=;
	b=g20AsJOdQ7/HEqz6LLWmQZPedDEpvFKzUdS84hmNOo04Zmo6qyRgz6E7smHSy4zn
	G/3petC/EeGKtlNDp5NNAUd1gU/H5GxCNE/rutqCm5CQ0oJgAuuvA8vcNJ3wQ35MRQx
	t6ylcqwR6NY7WiicGLuuMCbnhAnIpfGiu8gxiHJo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646421084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/mbcjM70HTeOuf4vQ5+erPpS7bXHbvfnRhNMWXRpom4=;
	b=VIacErrWPpWtHw3Z/eEisiEBvcd5O5ij8ZlBYiBaRpnty6kFwuiKV+qUy7NkRPQF
	OAQZbS/dh+T1XBqFD2UqrlCobdb8zrjyWthMCR9DeN17IHPBXRWUbDVVmg8R4bqmK7S
	NuT1X7CkssIh6ONqe1FVq0w+nBypKJt319OF9DyU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f56580a57-4785cb61-05d7-413f-b411-ba4686d3f38b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 675931e3e9aa8c55deea2897f0d988c609cbcee550616d5cc478df84bfd244e5
Date: Fri, 4 Mar 2022 19:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646421084
