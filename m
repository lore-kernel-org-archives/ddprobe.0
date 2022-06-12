Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16524EC0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 12:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655037839;
	h=To:Subject:From:Message-Id:Date;
	bh=A0jedT+Ye67X8wZN8fVhej38v3SmHr2C5aeOQSgA6JY=;
	b=UkFnXTYFlH9nx6FbuqwQwXTAppU3uVI52sqBHaEqPSirVhH7lscasmwqUkw341i5
	ceQ1EvUwKwAMqdfhxvegdEU6361DX680dowFwCzc0FOMeSNt7QYfhEOLCvKTylPqoM9
	6HGRCS4j6oHwKVQiEBTvpOlloGCc/EnLV1niFOWE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655037839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A0jedT+Ye67X8wZN8fVhej38v3SmHr2C5aeOQSgA6JY=;
	b=M+N4u0Fg+cPIB0fyvxKZXH5wVf11kwf5Abr00cfUae95+vIlJoqTX/NdgJ98sgXn
	YA4b3oprxSvc/tOjKwmwVL92yXh0frkbOeSUoP48jejz3bVWCWTn83jHQ8sEXxyZdUI
	RCdipZJv2nGWRqm2z+tdt054OCHso3qkqvAHwDgM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018157f14807-1b47f643-a1f8-4926-8f09-3f1694988a08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 371067f22b954b6f6a6cfbea2b9610bd05fede2cbadf23c8fcd1b25153183bb6
Date: Sun, 12 Jun 2022 12:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655037839
