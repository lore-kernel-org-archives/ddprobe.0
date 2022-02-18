Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C450A320F
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 11:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645185385;
	h=To:Subject:From:Message-Id:Date;
	bh=d+17Qk62q/VJ3WcS/FWC6Mebt8UspWfjKgofDLsqIuY=;
	b=CL75JSAYKgHOxELaV746t9cmpAiFUK3sokuM+59Zh8FvGh2DpMTn6aRlxoEgRAW5
	VPJbEw+oSIjiTrqG/R0xVktMWzg8dJx4ha3Y2F+ZmaktMWjzOqK7JI0NpmzTeu9uhNf
	U7O3zB2hc+9kK+U8YO2BosmvpkwFAKTc1ZH7/pbg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645185385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d+17Qk62q/VJ3WcS/FWC6Mebt8UspWfjKgofDLsqIuY=;
	b=dQD//hPz3Ql0gPqdb0usb91duuqMlqkENUYGc+rVH7JTVBLfHr4mVlpRIjqHkWRR
	tTUVCWl0WL8hsFhhSG/JhM0dpeN/ydZNgN6mybP+ZbtxFBcOVNmeL0Unb1IKg5AWNY2
	QE1mvxbKDn9jSUKjl43pLYC0WXp1U0GRVlhlitcA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0cb0c138-67d94bef-9fb3-4ed6-9ff8-06314c2f595d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99ad96ceceb631d1de2055259b1d1192c351ab96033983e285beffd2192bd320
Date: Fri, 18 Feb 2022 11:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645185384
