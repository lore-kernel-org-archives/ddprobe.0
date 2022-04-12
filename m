Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239B51FA1
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 08:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649751538;
	h=To:Subject:From:Message-Id:Date;
	bh=v9gXm2GeBH29j8LV+fg5t9gzWxalq7YI4uXEFnetqGE=;
	b=FEbQhnAI8n5WFSfD3R8b4jYuccakt5Axtl1pJaHIVFcv4ljd/KLtL3eEDcW0hw9J
	erdKDr0IyORsz0gUr8NBFBALBO2mTeyXzgcABwymWTVdvRxaAK5AMz5ZKz07i64STfo
	6sixfQd6MBGhwIGURnjK2rv/UraF/1TNM20JjEK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649751538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v9gXm2GeBH29j8LV+fg5t9gzWxalq7YI4uXEFnetqGE=;
	b=a6obo7xGi4ukFhU9Xib1vT01dir1Rktc+5WyVC1NzzECOd/JTR4DYfDUj+q6TAOE
	i5vqXyAOGN+R9lOApFjKqHd/u8nxnqcokd9oSgvcj9f0ZaV40OTcRfxq06N5YMtJDAd
	ImztqKRdV/TIY7M5ukOiw/fT/MrwDRYy2FYJIx48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801cdaba74-2cd1f7ea-2aae-49fb-bca9-62b484d8b0f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a605a827a33941f9e1d2450deb4225e0569ddd1b9154e765a8cd2f9e9b49d6f1
Date: Tue, 12 Apr 2022 08:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649751538
