Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD8E128E4
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 19:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648237318;
	h=To:Subject:From:Message-Id:Date;
	bh=63/40xYaGxS9nuyE6v52TruqgqpEQZ066HmimOuCAUY=;
	b=Mrzr5ENXEnYrd7vahCWFRyiEmkgJ6Mz1mepDjhfQn8TjpYCnlJSnbAeEJ61vURO2
	DGryiJrwcnnopjRsme3LIWK5AZWgJfec7WgtWx/uYBepdQdq4/RqpowhpZXXwCIIbG1
	2SOlb9CJAv+v+/S5Rvv5QFkZxSAMvT/2aPbLBWD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648237318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=63/40xYaGxS9nuyE6v52TruqgqpEQZ066HmimOuCAUY=;
	b=QSKKAbQcPdIgQSROps2FOt98qO8m3oUiw8v31BlV5R4hWTZet6l+fgXNOs15IQgy
	e6jPOQBlzUVcK9mkX4TvdjmYgjF2Ku1FBXbIdV2hDJ6Pzq4PFn7WPFcZR8PlEaf4Oh4
	5MPEtmILtuuf2Hqzg0OQqSGnw2DaFXyShhD3MJWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc299906c-68430091-8246-4984-8b02-1d07394c6753-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7c05c5381b9e68d8578d88b294934c28c23ec770f3fbbc5e9d52097b6de115f
Date: Fri, 25 Mar 2022 19:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648237318
