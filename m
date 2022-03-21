Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206F7612C
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 19:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647891985;
	h=To:Subject:From:Message-Id:Date;
	bh=avkAzCf7kiFk0RFR+lDGbRQ4A5mpv6OHmVe4nnf38vk=;
	b=B2lXWnMtwowpN7Tpx/dPtwzOK3kQedaZzYDWw7s8YRu2rThDZCXnPK4DgJY13kxv
	NxyN5z/elmQLDSwfcKW6PZF90i6C0y/tA1fOHyNyaZ7ev/rnQscA17hVs4bFwFmfWNj
	zOSqWlcAA0VpZLGqrCbb8Q+wyCtSpY9ypIMERsC8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647891985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=avkAzCf7kiFk0RFR+lDGbRQ4A5mpv6OHmVe4nnf38vk=;
	b=ZPlunUqrKsnDtWdJMzQLemQmkIZ1gHO4zcP53M2EkJSbQ6vCou6furp8aIKTI5Li
	+jSVtIn2gA2Ncnvi16k2scCPSE1NT83xeZjGiBxIgcxn8IBvS96jmaTJ5z90u7SZxeN
	jggTTcDvXLp/UBkccX1gPnzB8AyW3+uFHMSWdI2Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae0431a0-4d5a5f27-65cb-41e7-aec4-a3aad9adb6fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6509ee24172a056704a5a3e30c49a8fb0847e45b086caaff1bf3595434c4f80f
Date: Mon, 21 Mar 2022 19:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647891984
