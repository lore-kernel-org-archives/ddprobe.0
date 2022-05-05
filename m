Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01B4A363
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 07:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651735918;
	h=To:Subject:From:Message-Id:Date;
	bh=2BRGgObPicrQb4GvGKJjtUDP+L42DAySGEU30cz7ZnM=;
	b=MQ2Lgf4e3fAvXsqLkBkF+SGC118F77prbvOdkQzyCgkQsSFQHfYRhfEbuYmMeD6k
	JwPXkPDkDrXqQKv3ud6u5i46p4fcoteNCz0T7K0gyLhnma6bIVZrgSXw8Sw0ezLwrs6
	eadPO6uvWPNHomPrR6IZC5MNDMr/X7YOjK+CGgQk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651735918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2BRGgObPicrQb4GvGKJjtUDP+L42DAySGEU30cz7ZnM=;
	b=TzsFDA9/SMk/l9uxSBjauuGret446BOPxcG1qHI3ghzHpjepxSvrhTZZVMVmDFDh
	GstAPj6nAbZ50o8pHsOhdRBo1VIlZBuGCsyxjqPN3yFdWaR+oLTDZvKtU4H2XD1wF1k
	hxyc1TT6x4Kfa/wYv3YZQG20mD5Q8LiXX8y1PgaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809321f6b9-555d2368-4ea8-4ff1-9b48-0e72f510c293-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8ef452168040719fc35c90f86d198a69ea20d2be07fb7010123464f37656bbc
Date: Thu, 5 May 2022 07:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651735918
