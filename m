Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615CE7A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647252385;
	h=To:Subject:From:Message-Id:Date;
	bh=U2d6U6NmcmIoi2A8+gUZ5mf5jqAofE0kMD04ymfuZfM=;
	b=fP5i4z2SxMB1Js/LdnMlJ2IX0v8G6jt7G9pqDxu54CXmrYlGnOrvOdx9amWzoIlX
	wODTAQMXmWJTBhV5AVhtDIGSme55rf6hciaqicJR6SgIefavkgxw8QTCpYxfQMEY+3p
	qJNH4pgsTRZxnZAobuy4+PWNKmuZTDH5/J4wTg2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647252385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U2d6U6NmcmIoi2A8+gUZ5mf5jqAofE0kMD04ymfuZfM=;
	b=Y5FvaHyirVrVlvPtF7LS8AaukZ5bipbFZpt2PubSusMzxIThqNgpn48uKHA6JuXl
	jVSCAxKbzB33HUPElJDRgpC5JF0zdD/2zJpavP7gFrY3KxRjNoMNqPrckzi71HqZ91w
	tqKXwFFdmZkukCibz3q6fXjHv6bUfXs+0Du9Z3vk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f87e4abdc-83f4f41f-41e0-4998-be1c-f584ce9a90e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d03445a9f4c014d119a2c57a9a7f3d8d77767eb88b7678a12577e88cda064939
Date: Mon, 14 Mar 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647252384
