Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002A61851
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 16:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651249919;
	h=To:Subject:From:Message-Id:Date;
	bh=qsIERfiC2awN00OSVaijm0UiuqolEZaYBjxduxSrFNI=;
	b=IDS8owwjcr0QbdT+4Qo/3SJOzlL0XWR5mn1qhkRd4JoV6UEPPRwSbxVXcqjMUA7C
	aLCvA1F/+A0muExn8PpWgGPz4pYNv5ybhQFqXPH+Fopq/bbC1QfA3ebcDBwKtUGwIDf
	dbUlOcGqpo8zw1huLdwgDJbbJI4ba0xow+uwBZmM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651249919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qsIERfiC2awN00OSVaijm0UiuqolEZaYBjxduxSrFNI=;
	b=FpzY0UDeHtgWM2bjF4+44NTIBvm6V0Wp4WdENAOnxbmULBdx84wVK7ECZu0620FF
	n6GwwuoinSYtqI+4Z1x6ljccG9iD2giUzyJgo1U2XbVQWxsJ64JSA75G4QINt3FeVUM
	vWRrE9jV1wKAITVZW5CrOovGwfA2J0RZpyJ84lWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180762a3141-4c7f4a83-b1d2-4828-851b-82b4464e6fa3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88946ce2da02568b7a3ff754c27b66c7e943d093e3923a96c59a6df1f4bedebd
Date: Fri, 29 Apr 2022 16:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651249918
