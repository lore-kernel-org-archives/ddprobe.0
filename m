Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10815127
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646859385;
	h=To:Subject:From:Message-Id:Date;
	bh=Zgl2V4LCkEgu/EfcpW+zGnXB0xl4PbMGsBc8o75R/mo=;
	b=VzXaR6amo/u2LO6lDoKic2kwQKmfBX4QwsANLaVGEfglCBslqC1ZGgWgc6043wiM
	FVAi4fWSeEi7bNSudyDdrqWogWnDMv6cEPLAsNXM1E4FyiSi/n6VUHAFdDed02Zu8nV
	BTf5oIVvwTLE5YGaVQlV+IY1All59HBz51dSZNj8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646859385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zgl2V4LCkEgu/EfcpW+zGnXB0xl4PbMGsBc8o75R/mo=;
	b=BnMxJlcckQHl9GJaB4skRcdRkLFwT1GUPK+UcBVPbEB+DBX0VcrBnpZvvzq376qp
	jIYrF/mx37x5UcaTUXU224TrLmXmf2QvsqMS7uA2+8hEK0bE5WNhgyUQtQXOWkKGs/T
	ES0paID8pXVF39LS/rGZoKhcKzuS84xyRQyuJr60=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7077f7e0-81526c21-7524-435f-8784-0790f403bb5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 203da1ee8d46128f1fb6dc4f2499138d349bf4791787749a7bef6c11d9233dec
Date: Wed, 9 Mar 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646859384
