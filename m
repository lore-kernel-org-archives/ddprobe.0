Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA6287491
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646776585;
	h=To:Subject:From:Message-Id:Date;
	bh=Vxyl2NmbQBF9zr6FfTgOzS2Uzg05dDR0LYX/5mhOyr8=;
	b=RaZmjnxm/LW3efpbJnC0i+ixmnAP1Atmv9AaEQssQEdvr0p/vqbHATv8zkxb7ft/
	YSEg9dUL8R9p9Fv1vnH0dGXlX4A8iGZ80lqguxp7xhhb1qDOg4t9pBG2d1ZXpXccYsf
	JbHW2oNPlccKf8+vR03SW8D3Gk2jVEyTJlVotwY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646776585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vxyl2NmbQBF9zr6FfTgOzS2Uzg05dDR0LYX/5mhOyr8=;
	b=YRCSwpu5XnYL21bPzeDZ3ABkYqJmONylKHnuIU931aohmXekNL3S0bYc6M3YqV5W
	zQv2WZtHeinvMDzUSb/SpDBaaLCjzkx7iPoWtptN1QZFimWnN9giO9CBozVhNBDa0iV
	WHGMoHE8k5QpzmmKg6r+RDU/u6/AZLvFoA59qrDQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6b888a27-d1ef1571-c66a-432a-aa39-a7d6a6be8f96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abb9ee674443f0bb9c71e4a66baa05c8d5eb420a46a828c87b22c2c32645f6b0
Date: Tue, 8 Mar 2022 21:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646776584
