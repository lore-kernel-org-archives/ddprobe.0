Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0211866
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 19:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650482218;
	h=To:Subject:From:Message-Id:Date;
	bh=u8i2ff7W1P6fzF3wWKatwZPHnhC9wg/AZojg4y9zlKo=;
	b=CcaYb8smWnYEUcyyMTY9L+cJr2oQ+jkPY4/6r30HCg62vrZGrpHG5wg2Zsl1kg15
	PYHUes3qsKqDf2w0WX2MhOqdDAhbyXPLysInbEtNzgPJ5CKbUVlHbaZVrEl07L+0vKH
	gPG33yDw9wfipehXJF2tAu5zw9679nte0vxwIN8k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650482218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u8i2ff7W1P6fzF3wWKatwZPHnhC9wg/AZojg4y9zlKo=;
	b=BsW7TaDKw+rCtP39hoRZG29yq7xDpm3riOkObncKNX/vRDiom/wEV/B0WTzOckVd
	CaK8UCa5K1NDsVMw1q17qix/gAUSkfryOlglUA17p4eVbokOkTUP/X3OhZ/ZmEVbUZb
	tCjPCO7OkMEv8K1qj10iu0A5toaaTKcu0u6JXncA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804868055a-31146748-74d1-4f07-977b-a395f8543ac0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84f9584220b6090ae6b5146c6baa76efff55d4bac67cd75f149657f2f95236f6
Date: Wed, 20 Apr 2022 19:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650482218
