Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC142643
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647846985;
	h=To:Subject:From:Message-Id:Date;
	bh=B5GK8twM/dy3CjEyQ7RbxrXl5yE4URj9Rj7u62tALyc=;
	b=k6VBBbfczkncgR5QkpPEXpbI72LQvcyEnhx7UOth6/KnIaa7L0eZWQpVkkXN2ROK
	6WPFcXutcpr4Q7ZctDg9jmqPJZatbrI+5D5RTi1RmUteug3+KDr9Hu/64RURYq22LhS
	G5LiY92doUt2mCtjA8PkB91gMMa20rFhY96wpTTc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647846985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B5GK8twM/dy3CjEyQ7RbxrXl5yE4URj9Rj7u62tALyc=;
	b=N0AitKjPjBtRGv4+tKpQPeZi8XRPVeOIUpVzTeOENOu+arDB4xMiaOb1yDB5DrhH
	Zr5KDK0d3Mc8rjIHkN0VO1iJA/Ikh2BYagbwy3rwC8nSaHBYUYJ/P2b7eRZzjYIPAZJ
	K9XCD1ccsWhL4j+lvrRdQs9Qc2cgEsJIO+6OBQbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fab558c98-458a80e6-6d25-4df3-90a0-98aa5f224f83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4624c27674dc9178f433512b0323e1d288f3fb0294afac23b3525c7b89a0f99
Date: Mon, 21 Mar 2022 07:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647846984
