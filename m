Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC05D15A4
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 02:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650679258;
	h=To:Subject:From:Message-Id:Date;
	bh=q0h8G2u7BykckB8B1HHmeKw5qbsmYLQS28ONTlQ3mxk=;
	b=OvcDp1BU1E21+xFykQg4xUZxhNzum2sDw4tzifyhmm1e9zgyc9vRPddUEqaWZLKs
	g7WgHcH/fVVEsPZ8DSoDNnM/fP8/UrL8nQokpLdfjGz8H5Jo8OHad5J3p/yWnupF6Ya
	4OHyt9O1LfQEAjFWZWiBZU9fXeuy6LRQnIe2kF74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650679258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q0h8G2u7BykckB8B1HHmeKw5qbsmYLQS28ONTlQ3mxk=;
	b=b+LSczFz2G0YCx93x7Ft8tEIUfu/3Mr8p7anAPJ4pB9wvaG8QH+WAVX9OKbE9gV3
	wAjy/jhDj8ceI3imsU1y2q/b5iRaPl6rp8S59Z5FLYasA8Lan2sWy4DVk9bhqOIT2Ib
	GmToS5lxbEvEqq8hZQ3GGV08HGoWa0L96u1YigKU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018054269cac-4c972b00-affe-49f8-a07f-7cb69fb0b8a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 486435d30710f7af4b6f90d5421e8c9e8b51a5b3d4f2bb0c63f0b8124f3b703b
Date: Sat, 23 Apr 2022 02:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650679258
