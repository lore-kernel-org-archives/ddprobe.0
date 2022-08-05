Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7668DEA2
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659690052;
	h=To:Subject:From:Message-Id:Date;
	bh=Y+QhWkQGJeN8fEzlvFl+8h7anaytuEVFP7JKxYsbDkI=;
	b=Nao7nOUtD5CxNLtS13LtTKyjNTx1cElQDm175zkYLJccVDydTqOo2mmNl+5z7uno
	C+tOb5/jhr9RmwPTULzCh9t+GJ51nJesEPhTykDFN4DbeqF9LyMMC65Nh18QmLLBL24
	b08cBgxVa32hBsTKjH9LSL5YIS6aOIhJj9pqM06o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659690052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y+QhWkQGJeN8fEzlvFl+8h7anaytuEVFP7JKxYsbDkI=;
	b=IKgHb1tgFxOmb86vul8jvbYYnCYeUJvaLdU2eeAhemeUZCbtsTEdBqPV9ue43AF5
	BCQtfTHpK0aWLEZXyTI0kWpl2vvAsr+9G7f4oRYfnBahZ98p7/G7nzQkCy/FysyGzUj
	JuJFiUFOxdsLN5CoPh6ZpMQkfsLT4KKT0ThgWvwc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826d3c6bc8-6eb1b86e-5183-47fd-92a9-311f9cf4bf67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e533ffa8e1517fda15aa2d70f17175136979594200da3a8619b623e22f1b9518
Date: Fri, 5 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659690052
