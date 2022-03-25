Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8693528E0
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 21:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648245238;
	h=To:Subject:From:Message-Id:Date;
	bh=E3HlzT8P6EUvtQMYE+bP8Gk3FbfP4L3Q5TFAWQi9DUM=;
	b=Aduq0w433Irv+FEOiVfDflKBQSI1bIE7M0GhZjUwZb5TOmvxcS5pCXO2HnsP5fLD
	NTsq9RMHXo6iNei/oLJvXhubo4IDGwKM7209qUny67oUw0pR/gh5X2D07C3JAt834ui
	2kWShfyBnMKBLGBiZcjat3xyS4oGJZczCP0AfrsU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648245238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E3HlzT8P6EUvtQMYE+bP8Gk3FbfP4L3Q5TFAWQi9DUM=;
	b=gmjDSJUqOK9vnpvGXTUheU6o/wur4tan3hy9vHnmc+TGdKPzk4faFoKAegH2OyyF
	J+DwRg/tYUgRKWufMl5qwoywKkwgWGoXaM5TttykCacSYt6FP4kjthBgn8vzHI+9pXZ
	QtvPkbG6tu6DgwZ6NEigFo/v+qFWFRfCXLiqW8fE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc3126a6b-cf7c2482-832b-4456-8a57-1044af83ed63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65598fe44e583dcea60aeee66053ac193ba300063df8f14fb8f794aee3008388
Date: Fri, 25 Mar 2022 21:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648245238
