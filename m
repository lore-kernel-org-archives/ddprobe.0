Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70EAA20E4
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659548452;
	h=To:Subject:From:Message-Id:Date;
	bh=hVLIj14bn4RxH6EJFEKExEMPV7uX2EKLxyEqdYKXmMw=;
	b=D2YY41N5q+5iOAQUT0Qmud6EdmR0XHuFh14g0IPa0o6hDWOXficmfaVZM9N9x1xQ
	ElX3CzOJsYmmjavpZhD5+XO1cXqhWqiKVvldDviVkn4DbknMcRcWtho475/Dd9G8snG
	IXq72EV97eitNOdCKbcoBR3z1nzUOGzNJAB2jmwI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659548452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hVLIj14bn4RxH6EJFEKExEMPV7uX2EKLxyEqdYKXmMw=;
	b=UisA75zD0HkYupE4xb/A0gBzWU3k8kp9mGvDIohjv3vpQpxTGLizB1E+MMV3H7h8
	gBWgXZhIxq4DJG0dJC+YimUb/BmlpIk+3PyCQlXL7m+jGAPntastITi6xTEVyW2qMPQ
	tP/zly3F6efRB5wmWjfwED2OtEy/JB5XmPmSHfeQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018264cbc6ff-27e0b37a-5368-4178-b790-c1ad4f51d4eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13a0355db4c7346821077f4f579d3ec63c54a490f9ba66ca5dca600598ba24f6
Date: Wed, 3 Aug 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659548452
