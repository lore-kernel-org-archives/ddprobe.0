Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F00C62564
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 22:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649457298;
	h=To:Subject:From:Message-Id:Date;
	bh=8JUJ74xMo0ilDBVtbD4uGCXI6kk8EGyp6LqPnpai4+s=;
	b=fsgc8lZF6BQaEB9Z8eHyXAVGPYJcylukOnpi5KNzELdvjtYQDrdBM1POdRQXXiEN
	JJi+nhhNTes8gwLhI3oTLnj+Uu3VVy/IfgPobu8justo3cJlc5gypP9BHxQilXEPTw7
	F4NEePZaK4o/Mb8z67R+QNaR19vxeEVuSSn8Qxfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649457298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8JUJ74xMo0ilDBVtbD4uGCXI6kk8EGyp6LqPnpai4+s=;
	b=fWMWTUleR3SNA89ClpxkmlknmMWhXDUS9f2E66mZhf9rp7/hIGGttFigGE73G1Dv
	b86Zdu69s+JL8smpQ6KpXNmCMwUCKpSkHIi7A5qtlxC4A4lmnPjCUcWH1JWzXGrsVI6
	wAdDbFw+79LIxJ/hCKnB9m9WbElak95oVTq819sA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800b50fb6d-5f4c12c2-8666-4957-bd9c-2eef0616e68e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61ca9a306ddd3b1adf9f65e6aa6900028902ee1b6129f1c9bc200bfbea7b74e9
Date: Fri, 8 Apr 2022 22:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649457298
