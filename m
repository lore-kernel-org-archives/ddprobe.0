Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589D47C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659724852;
	h=To:Subject:From:Message-Id:Date;
	bh=KtnewlwAOOw/OspfQPqbtuBPnz0hJrkQFiD2BfZA2sA=;
	b=NTfKqssT1O9JhvzX+mYlWKTnIoyov6/+eMsj4WPx+wSZs8ZJ3pGM1jTgE9zSNfps
	KoC7VS+kQ5V24/7R1zpKt2FAPTTMoQNOGisrJSDRNf9S+qjS6shEOaZVoEKRo4vEtps
	Ri5Hey8Z7NMgNDGuX5AYkke96kQJCy0Kwthi7FtA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659724852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KtnewlwAOOw/OspfQPqbtuBPnz0hJrkQFiD2BfZA2sA=;
	b=iMqiyxRGXGzt7tUskNWtLbjAE1vesNhaBUBiqZICKQj0E1sTqzQWreMn64vEE/Hf
	hrKgX6QNyRmARcY1vOELdF9efFVo/mvXX1izIQXyT2V6cy7obv0o7M//nsn0+UbET/K
	zWQUsVhc/wQ/xNUfJ7fuHNtHJEDDFDFuUjdmFsaA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826f4f6d93-e0966b9a-4939-4b93-a606-daf33c8131df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e0fc1c0cf3a9549489d22168edae7f2a640ff5d1e818d46a7380836d1716d47
Date: Fri, 5 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659724852
