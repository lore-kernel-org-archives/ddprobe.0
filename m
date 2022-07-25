Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380CD1FA4
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 15:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658764012;
	h=To:Subject:From:Message-Id:Date;
	bh=9e3TD4zCrdJMGQlU+sVP6bJx70hpakgK+qZymLgkym4=;
	b=O+GBvIiKdN07UlbRHBV64Uc2qWuAQh+niegU0PrX9b7C5kQo0CnrA2w0e9ZGlqIU
	n4+yDjIgEfX4PRFsTN+fuzI+Z1W3J1c88cSDFkGaZV06HQXoOV4mcIY/es7HxEkGXYR
	6k+tgrjMlQUmcxHundWS4PoNFxmJS+8U3vLzdgks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658764012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9e3TD4zCrdJMGQlU+sVP6bJx70hpakgK+qZymLgkym4=;
	b=gqZ1WLF5e8NB603zcXsdo2eGY3gVA2ABTD3PsXX+ROBRkg+9tjb62ZEcGH3734wK
	gsRFl0B2XgzBXCcva8rMflUwK4dJsOhvth5gfzMRcsN4plS0KFBn4H0Ywooxj05PdoH
	67OFplASJxu7lqP3KbYoaex5GYhGcABsiNCZKGEs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182360a2b01-d3d37d47-2cb1-49d8-b417-d46142efaf04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c63a7340ea7aae8fdabd88588fc0a3fee87a333f90b27f624d0636c26f70ac9
Date: Mon, 25 Jul 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658764012
