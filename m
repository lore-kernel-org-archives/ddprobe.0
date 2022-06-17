Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA6957F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 07:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655452740;
	h=To:Subject:From:Message-Id:Date;
	bh=rLHg9HEjJkPCUPRR0t9TvduiOdfZwYOmBRg0KgJQOrE=;
	b=IbabiSyfZmn7fkXSi4aRBKZxKZWfM0yVA5zji/VauUM+Bp0AhUkiXFn6cSfpTD2f
	pWyP5VKz15MpBEc1/F3scHYGvEYz8JtQbKqMI4GfHwx9zfYqBNN6T9tvRYt2WFou66q
	o6tsA72RyRlEaCHCeuPrPNwS8LQk4g8mGqHraVbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655452740;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rLHg9HEjJkPCUPRR0t9TvduiOdfZwYOmBRg0KgJQOrE=;
	b=eqlcj4AQkG11R6ev+4+MOPyND6wi1XUWJ95tOAi/2nlS9DD/1lzq57YyAx4ND4Li
	HDwqwf51MNrKYJJn08sXRVRlIjosrCRizjIQsa8suOaQLyXD1T2CDn7FlIz8Ys/tyXy
	mD/3cMXqMJavL2wwUtJsJgqNK7hF4d+QoEP5QdOA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018170ac2706-6b53bd6c-0082-4b79-9f83-c3a1b69892ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afdf816f13f6f42bf2def8844500a8ef2fb0a12d692350353e90a93f16e74928
Date: Fri, 17 Jun 2022 07:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655452739
