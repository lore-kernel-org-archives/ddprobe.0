Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2207E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 05:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648099018;
	h=To:Subject:From:Message-Id:Date;
	bh=mHB20VbawPU0Reb2QNkg2pv5EbKmWI0O+vZhs3VlL2U=;
	b=baCjT92yjKDdmlujzQKYbpvvERav/4Jd1hvPzcjeK4pTe1tskfhY0ZhWOMca8MC1
	luKWjMxSwBIHwQA3wx6oZjRmlnx0AoUuQr4nOJpZPwIkPSjrvVAmvHKW916d6zVcIHi
	5ePOQaOJr22yCxb5lMO39xNr22nPWB45tGufqXEI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648099018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mHB20VbawPU0Reb2QNkg2pv5EbKmWI0O+vZhs3VlL2U=;
	b=IFZqJXSmr70GhbTs9DjuDEbfdjWo15VOp4Kj4/IwBX2ngrktuXugHSx7JVMLp0+r
	WsZNlBgtiOlis/SE+O6IA5lBq1L5ro6i46YteRjhPRJBnyplbiH5zJF/64hLYdliU8S
	vL8eFkq+yUrdLZJo3opwGdiEArLX3rnfBSP+6VFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba5b45e2-ba3d89d9-d87e-4be0-a0fb-cd9143c38d01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73867dc03eb7097cd800422f661cc8376dbf02925fefc2110b0be8bd3626e738
Date: Thu, 24 Mar 2022 05:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648099018
