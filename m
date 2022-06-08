Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E803E7C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 20:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654721339;
	h=To:Subject:From:Message-Id:Date;
	bh=OXgJLkAvsfMHE+/cd43uWakxVzdjxCeRauXx2oYhM58=;
	b=hV4afYOrClnJQFtr41ZntfXbJri017D6sA5nUzrk24iuM6HAPMxKbW2hEYbKwnKm
	Eq12tmdprUPxfHuxEXq7TwoKFrIi54P/xkZy/R4e/o8UoQqQ9LG9rwStuyCokbl/OHS
	c35L+TMmVkN6UcjmzXYPhFQidZ4i5c29Ft3BQAQk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654721339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OXgJLkAvsfMHE+/cd43uWakxVzdjxCeRauXx2oYhM58=;
	b=dl0g7J+k70tLeFMRWGaOzuW5zReFmkK359QccQo/zcqjtLY4cLHR2yj/XX2+zz3m
	Y6n1AZUWBcwYxqHFNC8WkYOTramq5a5JnnwPeRC31jRFnpd/i7I3DMz8XpncyrfheFZ
	XXbXNMUi3w2FYz65agyuawas6bm/vhLcHoDH7EDY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814513df6e-182add1c-d67c-4255-91b2-54ef2a5e9c08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28245b814fd264c9650c8f379ba8ad28a943f6aa8285611f0cfcc846bb7fcba7
Date: Wed, 8 Jun 2022 20:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654721339
