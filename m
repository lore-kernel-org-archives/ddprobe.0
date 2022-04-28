Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73FA1136B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 22:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651185358;
	h=To:Subject:From:Message-Id:Date;
	bh=VX/HZv6mTBNZq2v71vg6fPuRjZUEygpNF5dlVwYPhqw=;
	b=dp+1DRzOR/almvf0+UPL+1W5pm97JKh+PvHa2JFHv13aQpEasPxfmgre3yLQYlmH
	+yi9OUQTpKE8YYdYHxIlV833y5lPXlgbKm7MqZ2VvWRrbWvLbtzR0oX3mZjq+dCHPsf
	6RnUFUYW6d7Fkq8pBp6wzZ/eUxcSvo32OdpM0Ugc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651185358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VX/HZv6mTBNZq2v71vg6fPuRjZUEygpNF5dlVwYPhqw=;
	b=I3t+f7xL6Ey9DnHyfrsps5bagjDLLhNOavkkeKUmxgB8MFzBzZbfiJpAtcOB0/qe
	NS3hdDDbCvaM68uA7Z3nMsBPbMgU7vSTa6qGtSdbSMW3FQG+MQVUAXESzLIkL2j0cwZ
	V9aTn0u/mIEV8U3sA1M2dNT9ycwJT3s2rVRkDpCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180725115bd-78c256c2-ff99-4726-aa02-f56b6a6a4538-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 012e3c604e4674f005273e4624ecd7ff71b45993b4728cbe89c4bf0f462cffe6
Date: Thu, 28 Apr 2022 22:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651185358
