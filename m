Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF504C60
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647673884;
	h=To:Subject:From:Message-Id:Date;
	bh=g3SJYfjFcSjKIbuAQzVVpF8eYzs3apjsR/KTze+BGxY=;
	b=HGH/zLWQqlm3UIUn7nWTMqCPkOthJ4gZEJihux62kPn63QZvCmtJ6cGrjTpRHCFO
	5Vld/JgSFS8Y3xqBRbfH3+lVeYgKw24nhPSiQLs6tMw+XVCdcS751L8BVP0wQ4VZMnN
	xih6BYawK3YpRba+RaC9eyBHVZbKxQa1AxMJD8VQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647673884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g3SJYfjFcSjKIbuAQzVVpF8eYzs3apjsR/KTze+BGxY=;
	b=YpWzcc3ybFRt4bB0ncSVGrWNHI0fZN2pX2jOOhA2rNz49fgBqth66UK9vL/zRq9I
	d9LJIQhHtYj8k/Ghi4NUwrGwmIyvLX4YkRAx0hwAyw2GZhU+dAtNXkV3r8brHKu9oi8
	NcOJX63q5ufsa3EgTSqZJRblovVJ2Jhj7rkJvvg8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa104403b-0af079e5-d3fb-4bb3-a4f9-3b8c63e682f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67e3417c6e23ae22e25f576d0b6712d84b39bb1930d32ec73f59701db9be5627
Date: Sat, 19 Mar 2022 07:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647673884
