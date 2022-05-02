Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5829715A5
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 08:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651480738;
	h=To:Subject:From:Message-Id:Date;
	bh=Yitp/WidKyc8OkJwL6T1606q21RyR5uECDbVwk1GB/A=;
	b=BkFCcXxYEW0s7L6ZQ2hPsGOgDWgoTysOYjs99m8ETE0K+PqJxJCgaQHtBBZv++GL
	hoq3PzAQtGKiKA4GBdOLjf6puXYSjR5gLzpaHLO0htjZDBITx9+XV4KM/DM33LbpOpV
	WeGZfh55oYIfzAHMMteMRv5VyvWod3Px7biCG+T4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651480738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yitp/WidKyc8OkJwL6T1606q21RyR5uECDbVwk1GB/A=;
	b=fNrhKeWbVBXsIo2yWGkGXHLlSlxALejrTWY4kExcFCGp0OwtRN2uUyA6xksVFOP5
	HDUjRv13+spxMzAJUaryzXFD44MdVAu08eHpCHol+i1cDlw4jP5KdQ/6FGLraVso6PX
	OWUCKCqUM808U0dPcTem0qm/U8rrbrxFXrNb388s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018083ec39e6-73af8b6a-ff0b-4b0c-827e-eefc38ffe9e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e6c0ca1cebca8ac9d1bbde837391d36be1d9193c6bcd40d71b4ad3cf7fd8167
Date: Mon, 2 May 2022 08:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651480738
