Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B81F7E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 12:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656937612;
	h=To:Subject:From:Message-Id:Date;
	bh=s5tZ3mMC0pHV2p2Gr5cwiZaYr9XJULFIoHdWyfb/m64=;
	b=lV22NN52cRv0kykEmsfnhLqf4jOn+xXtewFlQEyyhiEsVpGiE/sXq3S3LUQIINVk
	gyvmgJlt1UrKrsNc2ZhFeUx7b/Z6q5OX2METfc0xqIQRx2Wtv2ldsV3A4BWaS7zFetZ
	AuzwF7xKrfFekF94axruUS4X3rnHhTEbDIOHdMy0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656937612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s5tZ3mMC0pHV2p2Gr5cwiZaYr9XJULFIoHdWyfb/m64=;
	b=bxAdeYLWs2B5iyR9OTWwDXqQQyo0+/XJuMyDxJ1k4OvL8KhKaTGpN3wZnFXpwoB0
	5anql1rShWd+0vNsLOKuuGE8NhDaJwAB9tRnO5mnEXuiZy/Gr3ZKmSePL3qJf14HctV
	l3UdHu1vl4KPm7Zx5YuGlAd+MPE0+0lcX7qc9s+Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c92d83ec-e70880b6-d740-4cb3-98d6-235cf81634ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4307105ae1d96f89fe830fac1c1f36628643b565b50c2223e92e3162ba370e34
Date: Mon, 4 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656937612
