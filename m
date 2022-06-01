Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82B287E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 02:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654048920;
	h=To:Subject:From:Message-Id:Date;
	bh=9ZwDsDGV9aR6J0/wUstXWLfqDHqy6ZZcg7Xal7+FqpU=;
	b=P/HQDHbvMynYwIYw0AjjNAmHGlI5qLvIkf0ns8GnigtWrOqdQI7QDi9hF7WDLRfu
	Fcp4KDCfPVkib3q4wHMeHdEzHiOmCwtB/G5ye2nwbCBr86Z2SA7EVZgB3l20/BnUvcd
	Qq9AHxAXXN/Iy4Y9Ui0Xm255mkrCEefk9bR2aRdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654048920;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9ZwDsDGV9aR6J0/wUstXWLfqDHqy6ZZcg7Xal7+FqpU=;
	b=HEVFMvwXD/gfzQPH+llKhHhBUPDZ1qK43QaxipTtWwsWE77/KZRD1QMUrRcWGi7n
	Sx6iqGqZ02AjdFsETVBSkapNo9K/X009uK9N7/EceqAdHq/pLwZnHIZek2r3BmZAylz
	vlIHdZvltMUcgLOEXbW326tDr/qfPh2Dy0MrY6zc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811cff8f11-ecb5612c-d768-42c7-937a-0dea2dda0da9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17b4e9cce8917e9856e54182ae786a219958fdec909fcc26b8617761533a1ef0
Date: Wed, 1 Jun 2022 02:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654048919
