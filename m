Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1999D187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645037785;
	h=To:Subject:From:Message-Id:Date;
	bh=auK/uG3EdEaZR8M/gpqDaXOWzhvPQ3VfIzM4KbieLuo=;
	b=FgB5F0YybhWZF9g6J7YIDyAUWia02qiO9oI/Vwm5GxP5SLCN/vstICK3xC32jjWP
	8XqxD11Rxc8Iosxy94xzZkFGPlOeJsQWbHNnTHw1NY85n259uwiFhYvcT2NdVjWHYy5
	QmymnJEpTjSZj5wXo2hs3AtaJtXZ2+eZy3nVNhYA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645037785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=auK/uG3EdEaZR8M/gpqDaXOWzhvPQ3VfIzM4KbieLuo=;
	b=cft4hCJSEobF9EjthYH0NniGz/X+D07kc+cvWonBgIl1K0nMsk3S3XdTD+I0eb/O
	1HNhhl8QagjXHGbnqANAkT8T1xTweg+pOHRiTSO3VFX5n5t5J9LvrxHOeGT97s7lIq1
	R62HR3ndnrKCDEVuxJU4of9AeXmd+I5tG0PHMXDQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f03e48ebb-e042df1b-a5f6-417f-88b4-30540cec84e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b796b1fc5c1525dcac4a01eec9ce970ff0dca16ef0a6b5aabc5a13ad6e331a97
Date: Wed, 16 Feb 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645037784
