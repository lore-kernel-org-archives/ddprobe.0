Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2252D368
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 00:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649379058;
	h=To:Subject:From:Message-Id:Date;
	bh=AaYkzaTWJrY3ZxcdrKJEIMQuZY11XbO9mQnnKOC7aYU=;
	b=aMXwYURKKXOspruqa48aTtKSzofMBbOQn7kBWiOpAad0QvMQnTnE+QBIVQF8tnFa
	iD4OC7J7bSUgI6cOeSyiHcPIuTt30XqLowuqOMFpYgohRuySnVIpTHJw8+FWSSNJr7l
	zLaPbGFDlEeswfToUncE8W9NnWx35n07ntCgZgXw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649379058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AaYkzaTWJrY3ZxcdrKJEIMQuZY11XbO9mQnnKOC7aYU=;
	b=D3OAPYInIMDYd3yhhqc3i/Q68O3psSfarayJXosT8zfGN64SFwDDKuueJNCdhiS7
	de+XtT2c6bI1tGqutrI+x+DZynx8PHW3rVe/c7RL05szZBrVoj24phirUYZL6cij18j
	LYiOeuB0dKokQNHW48mXX5qqxo6OsccxASdGEU9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018006a72251-255fd496-b17f-440d-a94a-b396e037e76e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04348c4584fdcf7d4ca7c5febf6c2a43c27092da415c1578847a241fa4385ec3
Date: Fri, 8 Apr 2022 00:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649379058
