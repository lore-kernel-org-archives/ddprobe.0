Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125B97A
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 04:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650860158;
	h=To:Subject:From:Message-Id:Date;
	bh=c4Ps5RI0CDIrxAu0t7ahJwBDEoAQ5AeS9hCIOQnwSAI=;
	b=TNVtUUX/0Y+1vlNYKXkaECHi8DUHp6C8lHOdsgAFFFihG0q9VYKI0P6Ck59sTtSK
	w0Nm9Y5Xm9pFeZAB06m7L0ttof/x3cMRbixeov0qGInoAJBC4F1g9uXkzW2C1Q/1YuU
	+EuA9prc6JhnNd8uW69syaYXupMcOk9d3pb0EC3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650860158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c4Ps5RI0CDIrxAu0t7ahJwBDEoAQ5AeS9hCIOQnwSAI=;
	b=WZ7iR07l7ETUTxhmgBecbvy0g6C0aXc8Xu42uIGpC4tAmaruBNj9ygX0NnZA9ErP
	S+jQi+ySP5q5MrJe0qOG2SPKYZexxOW5ht6tnAZDeRPtW2cvmle1TQKeqPiiHWpO1Nv
	8GhdXpaJh3hvNckeKIYJm4dlsyWu6r+CnZuZ08S0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805eeeed8d-5e41f3bf-6964-4bb7-8122-8eb15f0ae8e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d51192dea59bca4ffb953da4cac8ff2798cf74f1de6ad9f9e98a5624649e244
Date: Mon, 25 Apr 2022 04:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650860158
