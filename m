Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7687A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647765084;
	h=To:Subject:From:Message-Id:Date;
	bh=DEGLZ9HmEzuBlJyaDDmY/LNzeipEf47674LjKtXSFy8=;
	b=ELSe0d4ZTGh3mR190/5BwQrAxbWkA0bAlNsQ8tGAWzAboHxds6QJzQgMBkPaqIEX
	fkRLPYI2b7DiGlu9w4CSnd7cyqy1w5at5a7uFYPJgdHaJy7uNNU9z0L6RmAr45bf8Xw
	twk1l/rOkUk6tSTnQ0Vlnz9EVEQldxGOXI3yLWas=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647765084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DEGLZ9HmEzuBlJyaDDmY/LNzeipEf47674LjKtXSFy8=;
	b=OdauD8D4uW5FNbJCoFQFRjmcFl49Eb3gWQwSvweHSMPItYyr9qVKdBTWPHJWb0pC
	Cvd/ygzdSyR3p1GBiIvAFudW+VRLur7npmiP/nglrMW+NyKBZrSpXNrMt71WsCLvp2M
	Tf9t+eC6N22OwhqCaHrr9oBfuKlXwLPs3I2H8MpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa673da4f-03075362-cbca-495b-86ce-4554e6607e73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8285df399f03fee0f829e7b48b9d34d4258c5135432289270f64568bdbc3b48
Date: Sun, 20 Mar 2022 08:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647765084
