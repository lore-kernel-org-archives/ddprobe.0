Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F222A28
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 08:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655800859;
	h=To:Subject:From:Message-Id:Date;
	bh=zdulqZRhjuJb2yw4ueaztTpa2MBLkWx2zaRavZrT1kw=;
	b=Z+4AbuMGwcvfH/sQfnaGg1w1AvsUm9RcIitIx7vFOwoaFdICE3s4jKhUbpv605zc
	pCX0MDnh6SQjLpe5ZHooIRpsukUfjzYqY2+1Vpb4V20NtLDpQVVHMLyKDel4MlkUa6X
	5EhBHdhIZYtqpKtZkGdVY4AY6knOC1h3Sp80CPJ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655800859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zdulqZRhjuJb2yw4ueaztTpa2MBLkWx2zaRavZrT1kw=;
	b=eB8Cd2eXy8qiAKJXhm0KT0H+wKT5jbZdv96tz0ucugwG93pJzmCqyENLlpl7v4Dh
	MF4KR6Y43p4fa9nA/LOxeG2xLDKFzJbb/w+esD2KTiix7YUo9I7NNYHOYYzx1/lvLbb
	gSPbDUAgdG5bOwzjYHUMsPmtmVh/dln6d7yWXunk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181856c0a8f-ada3ecca-4b52-4224-bc0d-cb65633a2af3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94f258358d6782e5430bbf15a705fb0e93c4ce8d30aa697869ab789b32b07e41
Date: Tue, 21 Jun 2022 08:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655800859
