Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BFD29A2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 22:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656197812;
	h=To:Subject:From:Message-Id:Date;
	bh=/f596SuF1w/UfU5Xq+d87f9V/R+9gThnPZt96Gt7u74=;
	b=fsH5Yyk+JpZUY6SgaUx7QFYW2H46r/bg7Bj/Ft+boTDEO/KVjv6Zn/HInKUNtY0k
	LooAe9fb3dmtp4Cgyx+XGO3mNh28PbCbVaYFzKskukIxrc8FN8xioO/EnpHXze/GBW6
	YSDjqS7yXXuwoy2/LmaahNHK3hwWNvppDIjY/eGs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656197812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/f596SuF1w/UfU5Xq+d87f9V/R+9gThnPZt96Gt7u74=;
	b=PVU2jEH+rzQlxuYO/NAXevPnumPhE1YB10MCxw/7FEdfA0Vpa8RJCeHEFkyxTYUX
	P9sq0/xN9uOZW7Zbu+LHslGjQGFzHWL+y1El85bbb/lYRDueI59W1wX7nsLfDTW5FUZ
	eJWtclwy5CS6QY7b9C4KoOhbntVneNjzo0owcYSE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819d15101a-ab424736-a0b1-4eab-bd2c-49d955005502-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8004539d943f47ba56e63631a6c27a3be4990f14c4dadce6c3254f807d4a98ab
Date: Sat, 25 Jun 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656197812
