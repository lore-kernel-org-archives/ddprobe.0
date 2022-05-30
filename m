Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A18829A8
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 12:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653914819;
	h=To:Subject:From:Message-Id:Date;
	bh=cOGXEPdTdPLKqk4ZCRxwJHKJlHCHTVQrBwufb2KWfvs=;
	b=fxSlXONwRS25mjMEGdJhFYRfHVyws2rpfmNejOG8nm5WzWV8qFXNNFbY4fGsMSAl
	DYMUcbJcZOMAzSFQ4Kwc9FGq+piImyefp5PTpTgDI0omcn3GXoLg0bVAHJVAwNLALTL
	BQJbBWXU5dbT4tmuWrp7gO481b3KGFxnYFSjBr/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653914819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cOGXEPdTdPLKqk4ZCRxwJHKJlHCHTVQrBwufb2KWfvs=;
	b=fpsrCS9mDVIZndZIJGtqonDrWn7CxL33FPSzQU91+oj79u53YU3dHL5M0SCrPvTN
	kUdG83p16Bjbs7201DHkw3C13eg4JZkudAHN0n5gPSeajc+C0NYrZde3McWFdOgdJ1k
	98oLHoXog7z/L49V6o11YoODHkIQ+S1NYbX7wICQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018115015ac5-8dbbba55-0212-485c-9f4c-3b4a8ceecef8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4176375f6eee16dc32e3c6bb57f459d02c1a794b34eaca9bc4f9aa403ec4d6b3
Date: Mon, 30 May 2022 12:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653914819
