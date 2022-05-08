Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBA51859
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 16:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652029138;
	h=To:Subject:From:Message-Id:Date;
	bh=AMaiY10vwa7Ehcqfwy7OfkJHhWVk/RCZTs+ZmFXD5OY=;
	b=Sr9IDQpyEwDdKVP2HQQMEDsg5TZ8skc2Dro8iZd55LWOqxxMbUrxBY80rDDwiynF
	P8YhBxiBF68gkbv1hr1BefYauJqVOeAntMSAKU8jjNKM20Ww++Pumx5bNvXWNMOWlqS
	oWab6szDUg7wvhB91jCVmJtDam216vPgaYugNed4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652029138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AMaiY10vwa7Ehcqfwy7OfkJHhWVk/RCZTs+ZmFXD5OY=;
	b=O5bZ5GNWhnZfFsyESJd7lOPrCNCtnGQzJ+q3TAgcuPrO5fNu/C6M8pITeXuF8pxe
	nFVQhZ9rp8tYwO6hB9msc5NKbYilMseD6TwrhhE08UWOM1TqCMgufKcSpJtQ2El5PrF
	9MoylRycI0lpdL46QmEJg6TUTwGX9j/GZoRQj6ls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a49c2551-fee071c5-1998-424c-b0b6-571ab8bf4eb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b153e1151072dbeed425722c97fd0ed9bbd00d652dbe9d563e4be77c2aa42f6e
Date: Sun, 8 May 2022 16:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652029138
