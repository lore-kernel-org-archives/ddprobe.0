Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526BC137D
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659542452;
	h=To:Subject:From:Message-Id:Date;
	bh=LK5oPwlqs7WhNfRikLes98URGcZgZMt3P075cpIPQPQ=;
	b=KdAPnvTpgA56zIERkl6SjklaPQLJkN1jtQdktVCSV7qXJbCYLF+PH73mUanlkEdH
	ujCMagnsw7pfVfzyPOOKaMEmc6KLgkAraRZ0JAr1I4e7KRrPgjoN7OxwRj7xttmd7UV
	MDDBIZptd1SxueL8Mi6AOaSLfzQUY7Dtl+3xvtiE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659542452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LK5oPwlqs7WhNfRikLes98URGcZgZMt3P075cpIPQPQ=;
	b=P281thcssGHQYJ1InHdoTvAWX2jYKpMmsaR+9vKjQCb5cUy0kxiJJU5FaARVHU/3
	kBQ9+u8sXvCKErkA8Q15sd+axOoWY1VCFTiKyR7B5Kh6ypi3bux8i1UuZUC5c1QBo70
	R/fGaKlk2rdscsrwUlcEwvsH/yfNmwrMjkbs9F4Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826470392b-9c4c5ce1-f258-4355-a9fe-ed4cc78d7981-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d595fbff77b32c8d33558c568775d5ffbf77aebcef79da65487eeb269cd86c13
Date: Wed, 3 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659542452
