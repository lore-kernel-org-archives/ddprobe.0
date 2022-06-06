Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669017E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 18:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654540319;
	h=To:Subject:From:Message-Id:Date;
	bh=HGiiYwsemUBMMUffqMypt5r6BZhrd/+jF5n4SMUmZlY=;
	b=hvF/8Bpwd6pdDS+lb5kG0GBlYGD07y0c7HAX3lQL8r6XQkAZLP+8RHw6I+BsnBBF
	L+5kIgPYMJ5Lg9C500WOZTHvrVax2Sfceh1BWXcd5TE2v2PmF7ReJITAupKxW04kKlV
	oKL4i6xhvDfO+H+zWc36kNfcxfBokN0UoTSNpOLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654540319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HGiiYwsemUBMMUffqMypt5r6BZhrd/+jF5n4SMUmZlY=;
	b=TE72diKW7lQtxGJPuluShd2BLT7mrVUDGvksZPfRTbxHtRulKF5c/sFBf8Z0kZh8
	YTsYIb5xSLV7zHa8iPu9/l0UPkgICxLoRJDNUO+vVfgqBkrhexuq11/vI7dNkXCWJrF
	iwU5dQKidf5T0TpXW/dkYA8pFWjQzYu/u1DUzWs8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813a49ba46-0aae07be-1731-40eb-9247-5d717ce946a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cab0c1a57797c8feb07020221523e5072952b7c900d2c73d510347a64b91b52a
Date: Mon, 6 Jun 2022 18:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654540319
