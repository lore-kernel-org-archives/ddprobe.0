Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D0228EE
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 16:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652977559;
	h=To:Subject:From:Message-Id:Date;
	bh=aLDeLD+DO0GZ4aZrTUiZFEhUsoxdNcmzBFDrHGvouaI=;
	b=RCF2hAguDPAYvLrNst0w9Jwp1qybFXM/MB0dwcdIraIqjLMXa2SjcIBCQLX2T89I
	/KBVj1DviyFKCXuN1tNXtDU0BQELp0t+5ngYgUHzcxeVoLrRTz/Cc/6NhxBtsHe0VtK
	R1CYjUnkuVa1vQuZn3iGPn8KVItjAvgLJcRZv8AY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652977559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aLDeLD+DO0GZ4aZrTUiZFEhUsoxdNcmzBFDrHGvouaI=;
	b=auu7rJ+nwekheBiQKCTioO6Et1BiDt9BDJQKmxu6uXB7PxtRsESxYLcqBroYVDDB
	TrsVTYZPMhlBJmkYoXFadvkBT+m2v8cwOiDISOG7xCLKtsuGz05iJkmqOlxyap4R079
	2qMREhiYsmqLDcy3PY9G8yRrfprxEuaKGCnp+/5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dd23e78f-aed10413-162b-4cee-b5a3-165c3d7a73b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5035f3aae805702ddf769d08a57ab3acd5f8f39a5f8ad83abb9460215c98b0c9
Date: Thu, 19 May 2022 16:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652977559
