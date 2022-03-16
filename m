Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4495138C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 14:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647439284;
	h=To:Subject:From:Message-Id:Date;
	bh=GaWk+79i87wnW1NC56Gf6Dusui55urpVZ/8osBcDQEI=;
	b=VVZiSaWj6ogMadRmXVAqQNRfk3sSaE8er1JgfhtqFgToFxupzUclvbyhJhC2/5g4
	Q9jzcgSlT4AhKoQhsMm8KbViri7UdEcpaCGuAy4RY424M+SlJQa6wyyXKbZgaZ2TLlz
	jUwcS9ApCEhGzZWqvjY8fVASlB5dD/62kazpHWNE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647439284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GaWk+79i87wnW1NC56Gf6Dusui55urpVZ/8osBcDQEI=;
	b=JgxzCEoHVCjsd4xE6GFceZC07D589FoJtZX5N28gL6twf8ac1FjphpN6IB2z+r77
	FGIVRyKp2EQVQroz1f3sI2GlFWVj9VHLBGhSIOAdPV+HD2nbOqRd1FDeWgABfcLB5sZ
	clgy36cDt2xLBLvjLDTJwUeQQhRx4JRN3w7sudG8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f930889ee-8ae9f8b1-54ca-430f-a6e6-2275b32aff64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42bb94974b42594346a86378d5401a4b2d40d84d80bd3dc9067d2dc4a92e0732
Date: Wed, 16 Mar 2022 14:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647439284
