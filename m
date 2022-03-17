Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90BA446B6
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647477084;
	h=To:Subject:From:Message-Id:Date;
	bh=IRzo++KPcN1W9k0pzHyJoX9O3TP3/SZzWejw6/MMuEo=;
	b=CaIvDO4MZVkAdUd5MMpTna9mZE5VqFIwniCs3m+0bzwbjqkUiRHEu03CVTUCtiuj
	HWg/CwSoffFtmX3yNVEhtZTqnlJ4tSRM5TWDhIsegDcDfSehVZeUOIwAhQNosGpxNV6
	t2yPbf0Cf7sGv5DUkFjSi/X4YrfCc/Z6r1SIOrF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647477084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IRzo++KPcN1W9k0pzHyJoX9O3TP3/SZzWejw6/MMuEo=;
	b=Z5LU1YJb4n1zl7ydtB4bF4+OyE4bqYPuDceiuH8rM4I0kFl8tf4ZOjgHQ71dXqAo
	GrWRG2rteXjDxr3BF3l632bMnXQDMTWZj+5SVKL0t5jjST+nay1h6Fy8U+AWSMQS1Z/
	OBp+T0sq758dYo8ypwqPwL69kxiyozK+LzTuWPQo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f95495239-ce390050-66f4-4811-a3b0-9c0e828e87c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d4c6983137ead2ea39836810a0d3164d770b95f79d9835cf7a20aaf2b08a76f
Date: Thu, 17 Mar 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647477084
