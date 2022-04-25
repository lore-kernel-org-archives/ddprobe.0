Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028C47E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 17:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650909418;
	h=To:Subject:From:Message-Id:Date;
	bh=5WptajUZr3f2FIpM06GD6/zLh4Yjhm9rDlcew6OW4Qs=;
	b=AAWy0gXGq7BfRvkBjTY3Gc/aE0QYMGksADumDXdlQ5Ez6C0lTYJIF0KcF3sRx0P/
	MRmOxGt9mYuq3dbHzpqORnWReYZoGPpgdNelqgM9OIYVmoPzmCfQIONjw3YhCmRO28o
	l/L/DMQcXk50w/DMKbef4c1uOvJjHZtWCMo/OA90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650909418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5WptajUZr3f2FIpM06GD6/zLh4Yjhm9rDlcew6OW4Qs=;
	b=KaWUpJp3+HkCEFnRsI0+S25OXT8tBBczkXxxcTDKSoUPjs3IfKmV7gI9guXs4Z5w
	86PcDTO17EslFceCOi/Sw8VudFdWMQCT6SUDt3lNcY2qKGj2ogLr8pVuYvEXwr8yezm
	Roh+4V8XhnOvmSjjWS5J22njpBXf/FqhpkwIjBkY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018061de938a-b54788ee-5a92-4ecd-bf98-c109bddddd48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6ae03847c47ec1447987881975e2f0b7a8c89777d9f790c27f40067c0e3e2aa
Date: Mon, 25 Apr 2022 17:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650909418
