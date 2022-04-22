Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EF028F1
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 12:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650632158;
	h=To:Subject:From:Message-Id:Date;
	bh=gmLAa5pTY2QDqUEgr5cnWj6BOV36jt/m6oE/e91TIOQ=;
	b=WSc9ITbtlbfQ1v+L4pypCSwfclLQxTv4xUSO7kerh626No2blBiMeGPeUEUuuRmS
	naLMwe80tsRqloHmI0nYMx+vBSPMPWmpa7nfbFX9/ou2FXFi92QTgjUpTVfU/jrS0YY
	d4fUTp9gvcG2qj6aExlJxEYqWOx+PC8yc16JLVUY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650632158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gmLAa5pTY2QDqUEgr5cnWj6BOV36jt/m6oE/e91TIOQ=;
	b=MQikFCmi0Q4VNiIMQEKdj/PtAVS5NrijsIggtdAL/SGp4FR4jTx5P/+O06qwTgeJ
	DgxiOTJJ6uBQpRn29mp54XdbKliajRkbijBub6KtdS7Jq5bOaWbRIVyJ4KbbssTd+pe
	IM8ZYaXjxnU9i6cCgkFaUflJwz/xL4fd56QLjll0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805157ec4d-12e93de6-5e07-48fd-a7c6-9e6defb054f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64f92d5844adadb91c546017d14b463a5d17879c61b42239273546d0733bca4a
Date: Fri, 22 Apr 2022 12:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650632158
