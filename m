Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A4120FF
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 06:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648536358;
	h=To:Subject:From:Message-Id:Date;
	bh=7vHfQ35v708Mb5JzwAn8tCATr6x/urdWN/7Hp9aPf+4=;
	b=HHKP2w+QnHEkyqoOAhdP/x8s51feWZ5AjKeYwCeWL7dkyAXtEDONd3fQddQm6nmn
	WTLV+XXkFHY2nWr5eRdn3cTLctBCy231lie8zCkUh/CLmRX6OZyC1/dr6/FOjCmGgpU
	DNOMcKU5Pj1Q2LPk80O6+7enBaxZkBUYCTYt2rbQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648536358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7vHfQ35v708Mb5JzwAn8tCATr6x/urdWN/7Hp9aPf+4=;
	b=MSxjTGMBB4ywflbZlkhHCk4NVxp9FSg7E9wj5uyh+d02f+8Z9q451QOkWGXrbSj4
	wSF+PjrYFM2eRQY0QY7he48xRQCksttV35xbABo2RMumQKmBNWS4ftqy00gVMqaBH7x
	QpR6PSdbjUJsXahEDK/iY924gNzOyMKigVDVWRWY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd46c8d92-fb3c7bb5-caaa-4a2d-a5a0-43eb0e8bdc0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de917c48868029097c76588b800d6f8d9476c4363abff93261c58b16d142296b
Date: Tue, 29 Mar 2022 06:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648536358
