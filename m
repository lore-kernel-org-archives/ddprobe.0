Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5B5A28
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 01:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649554378;
	h=To:Subject:From:Message-Id:Date;
	bh=ieQqskDHifbGCIj3tu4hWL8DiudZGYSuu0Sy5bVq3vs=;
	b=VL50Uk1S+9+imKXBFRQUsMWHi3Fns8x4xJUbi83/89hCa4PQvmfS+7Tqkkgo/Wqw
	u2FA2grQuEnW381b16SA7bOXuq8sSpd1OkhdHQ4u4zlc7jwKm7nSL5e17kNpYZmnTDr
	EjW4YQTPhfwGdl6HzSkOUkPr2a7aLRsBj7sdUzBI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649554378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ieQqskDHifbGCIj3tu4hWL8DiudZGYSuu0Sy5bVq3vs=;
	b=X94DwkdzAB3SVOID7xGxDWOr1wIcFEJkvwmdevV3YJc+bnWDmARWUhP5sz5/BVNt
	K9CU2Yj/Ef76mYOH1vw3wu+Dy3Qd6z9y9m8W2j41t3BjpSD6eDc3ffKJqjsOOXDQKz0
	vccCI3frbG3fmh3IWRMAhAs/zZxlN7wQ7UJNb99I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180111a4e13-66c68a54-deb7-482b-80e8-399accee8052-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3cb926cd811e9e615cb82561c001b75831043d0861325ef99c099b9c8ba7fdf
Date: Sun, 10 Apr 2022 01:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649554378
