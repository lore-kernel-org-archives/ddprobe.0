Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CF21B60
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 07:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648107058;
	h=To:Subject:From:Message-Id:Date;
	bh=8Z+qU5/rOTKloae6PmSCMYnV/m3JzPTiT9IDNHuL3oo=;
	b=LsbDqQuNBANVj4UYEPzglG7cWGizAaAIQllKnsJaxx3fvLZxtXsdPk0qwi05Nh+Q
	LcLzuR4YwfIc6UKCoz1H8gZIwzs7r3RGJVW2moqACDCkqAMjF7/WFz4QaWxFc4PE+GQ
	I2a8A5+Ud0XxsEXNfeCSY1O6/1CRMI5sG7J2rSy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648107058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8Z+qU5/rOTKloae6PmSCMYnV/m3JzPTiT9IDNHuL3oo=;
	b=VZPQnF9HSKbOhrap8pJzFP9mYLezba2iSpMHfrO05xGzce/BYPCh3KN6WAX3jJuH
	jvzWFlZKtmUeEZBtvDTDD4jNHIYxw8zG1yR6WAyuONUKxWX7Z8XNV5ii0S6ONwqDJqP
	yv3CbzL21zXHEtC5An9M8xw1ZU46VtKLx1yfPVsY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbad5f463-d3bde6af-d947-4e0f-927a-f7e7bb4086e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d873fd6f78bcc6f8a9ba0f4a3ff8ae3425ed494c30556afb5638dc8f979dbbf2
Date: Thu, 24 Mar 2022 07:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648107058
