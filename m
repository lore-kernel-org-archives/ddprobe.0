Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749045A12
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646133984;
	h=To:Subject:From:Message-Id:Date;
	bh=aVQM6hOXJk7c9KoywnF5Jz//bBUdigM/+qmo1uzKNug=;
	b=FA/BQjslH/+2yPIf8qt2zEKg7Zw4isVevpQ8UI1Hgt1IQqIWLgvepeqB4XEYXVcf
	5BdG9l/zu8QKH8J/mdaVn9zUvb5k/Q2l8B3UXlec8Y0YImGlUXUZ8W5SLxeKoG8eiO5
	SeZdIPusazroQvIhYCneylQxdh8GxVGy4CXb5tac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646133984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aVQM6hOXJk7c9KoywnF5Jz//bBUdigM/+qmo1uzKNug=;
	b=PI4vw4p+6APH3UD+Kec1Bs9n5/PAQrqIwJVgF0txOXp9F0YgtJUf4rnfBderDUXT
	QXV/GgW0quY03DlJ37rKi0zV28P/NMM+24lRT9LNrcOW/x52om3QcUKsa4zYqAPs7uF
	mGCkOK6+NyUox010WsZra0U4RheCrLSSBfTMbqNg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f453b3e24-ef668205-99b3-4a80-8637-53199a86d775-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5a7796d06b6c10260891ffc02f940044966cb3e2d94edbd4582aba7d57e0d61
Date: Tue, 1 Mar 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646133984
