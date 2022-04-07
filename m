Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070762564
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 18:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649356858;
	h=To:Subject:From:Message-Id:Date;
	bh=kyEhPC9ozSMT4pxH5i3OE9K6E9aHU4GZtyLklVLHF8E=;
	b=EkTVNTMKAlIbgLc3W8C654haZoNlenwWHQ9aF99JiwS7coJZYY31FDzRTAjXWgKQ
	4mil3bXhCwiucKz0xT/753jHcM2wQqKUapD7Uc9CsFatMIzJwEiIy/7Pi3/YGfq7gts
	/CG0n84ImBNJ56nlqCDHg+eXlzpZy25WdAM4eA6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649356858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kyEhPC9ozSMT4pxH5i3OE9K6E9aHU4GZtyLklVLHF8E=;
	b=OdD/4ARUxBBv7vkwL0Oy/+g80/k9TpVEINjzXZEgsiNj7Z0BXBxmwGNqGz9xC+tb
	BLdTJEMc+ChkKfOzvcoW06ja757aSsE3RJ/Ndt9bCdpDVm5hfUhdrT0/hqnt1b/Wnu7
	ZHUcCdvyTGiSNb8OtV4XKYH/BwXib0ejPA4eh2lM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180055463bc-b647ae7e-bc6c-4a65-9092-fcb27a35663c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccb8f730b11977680c42a529b41aa71863dc45ef0b1113e36d17fce7a589f92a
Date: Thu, 7 Apr 2022 18:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649356858
