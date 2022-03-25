Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8B07E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 11:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648208158;
	h=To:Subject:From:Message-Id:Date;
	bh=WmGLjFe3aF5wx0zoxCZnZxs/pAs6sfyVK4ILkHxLi6U=;
	b=Vj3hn2vVhdYhqcQ0tFteaxW4udD8djbN1S1cQ98Ut+3avLI9Srp74D3e8oSzxAhb
	btUnhLWOP3iozZB3N3TslaRADl+6xMSv5dbX7/KNqtRF+d1YRXrzwfvwSym3+49w8dY
	8RsM47MnXq6Hk1ZgSQKu+Gyee6quppWyOwcfkWzI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648208158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WmGLjFe3aF5wx0zoxCZnZxs/pAs6sfyVK4ILkHxLi6U=;
	b=jKHadf1UeQx828KJaIvkRIifXcgpMl3YhmGa3XIgandMpIFM+WmJg4Y91vfgnVz/
	U0Jel9AL5WUTL4yJw+MWbMoH9Xt6HxpnEnKp5cDVKECfoC3tbqBuv4gheD31xzHpBcr
	YNG6eo4pRxHv7c5an6ZMlk08Ya1ZQWgtCPVTjvL8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc0dc9e29-22cd85f6-bb90-447b-8d6e-8aabad310b51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dcdf57ab445f050e55ce96949a2c4643c4934ec1ad94951c80fce9e992b00084
Date: Fri, 25 Mar 2022 11:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648208158
