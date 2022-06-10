Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464057A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 12:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654864259;
	h=To:Subject:From:Message-Id:Date;
	bh=BT9XSJzY6qnvZaSIEin6La5EuiYtOeZV8FjcfrxSmlg=;
	b=RyA3bdvCWGqcCA9/mAOMOBZFxt6km8/xC/uUcQIDCn8UKsTGlctZBMmGNW9r9lAS
	hayjHIExPfRBYzDgrK/XEbxN7FdncCteBhcEc1XRycXJZy2urAmffs2BRaCFeoTNo4y
	X67n92GjGqOdCpF2Gjox2BtAso0GLxLpM+uu2Atk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654864259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BT9XSJzY6qnvZaSIEin6La5EuiYtOeZV8FjcfrxSmlg=;
	b=MMsE/9hs0V8IR/gPuhDTJtPh0nDACy0Hxhp5we4AixPumS8wWp9r7lU/deav3zhz
	gNx20hV2Sk/WMlVz70E3q0R5DOcmCSOsX9r594VAmWT1zWUk0+gz1nIltn5sMdOjsB+
	TQZS02iz0yaJJIulRWEh643ltEossUSjo9P566fA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814d98a899-a6193496-00e0-4b38-9cba-1f58a4427b2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ffe3de1d49369d0e7717c57f839bf12724e99f66ce2595fcdf687343f02b13f
Date: Fri, 10 Jun 2022 12:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654864259
