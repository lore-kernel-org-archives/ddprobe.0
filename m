Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 903287A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647251785;
	h=To:Subject:From:Message-Id:Date;
	bh=wOddrxajuHANf/xKNg0yv3+KoBrvLZIwfntfiW807HU=;
	b=I8UOosXqMbcxGthC03z1zL/XYLYYcWfIBsinILqUA+V9V8uALWpwAVO3j0gmmPXW
	ctvjZzvCPDKI9li+Fc/5oTJkmwEsz+hT83mOUOQGe6ginQDe+r8equk4R1mGFz04Az6
	U0f/c76sTvMw3Ris57Vbp3+80EmQ6y3TORW0BOnM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647251785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wOddrxajuHANf/xKNg0yv3+KoBrvLZIwfntfiW807HU=;
	b=DvjcDNiNnJfGTGIXsnPkJ9HDpfK/dyBRrAx4g4u2lItmUIrRXTISSNLJRdOI5/LS
	Wk+y9ndNhWA1B5WjzeflYPo181V5rna5B07HN3Zq8sErUvoS2eqyZT+cdjq+f1nMVNg
	4m8Ivcodt492rqyj/hbf1ploPXhbQ/whJnsTHkIo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f87db8494-a1e588f9-dd64-44f3-afb5-1448484201dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c406f6a2af1a4b0060f9ffff3d1f9811156a1a99a3ea3836aa4f110a6365df4
Date: Mon, 14 Mar 2022 09:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647251784
