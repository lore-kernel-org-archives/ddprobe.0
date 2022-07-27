Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298F07A
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658933452;
	h=To:Subject:From:Message-Id:Date;
	bh=uW39rrOvT3WCbdl77tg8Bc4v4QlmwYaC02eGwbs89V8=;
	b=Y+c9PXGSMEI0QkOU6vyaL6u+GbvgqVR4F55MNE+Vm+gWQ9yUv947m7TXw8xajEsu
	LjYxB6nPut0NCO7j8vDnBwWYJ1eEGm/vE5NAlK9lOYiDIF0GctTZP23Qsx8Vf8bblQN
	FiJQ3jpQqHqmZlurhliL7/id2ehXFt4+3fb45SbU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658933452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uW39rrOvT3WCbdl77tg8Bc4v4QlmwYaC02eGwbs89V8=;
	b=ZpQiVp6XswykVINB091djYIA2rXF8fyblEOHRQWqMRSxfQSrsGl0Fej5YxNOYRvw
	Y3TlZsdugRp0diDMrFuyaJiYWFITWafcTFT1nLqdacIio58M2sL5+m2Dt1hAvxdgSmP
	FYmjJj8GHVBAY4VYNBT6SCFa5mvocxxpXTSaPPao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018240239ee5-0c5a8367-b99a-4b80-9ed1-f777cbf28bb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e949abe8f0b994da1b24bf9921dcbe05a1bee4d5d74caa2453a6f26a69059cd6
Date: Wed, 27 Jul 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658933452
