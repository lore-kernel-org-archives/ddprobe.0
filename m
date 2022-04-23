Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094B517C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 18:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650739378;
	h=To:Subject:From:Message-Id:Date;
	bh=NQ0OYrliNDF4wBIbe/EGd/tXchlngGHlx1RazT9dmY8=;
	b=KlgqNIBqjkCjKb+RKX3K6jXKf3atSXikAN7GaJsQuh4bEElk4PemXrxZUGiUwHHe
	aBiVMFVR1hBXGZJ8NGi7+glGdawJ7CwrvGNVg1VlC20Rm5n8sVjAbD8L53CWzR1eS5g
	z33cx4FS7vFX+7QT5TFWBoVKQ/UU2dRxXLU0P0YY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650739378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NQ0OYrliNDF4wBIbe/EGd/tXchlngGHlx1RazT9dmY8=;
	b=IUfXqXKmcmVpJQR97tjRXMkhBpWPpDyKjtRVPaOVEgZiRWNDnwHE8PLq4Y6FZd9u
	Bxk8Zdn8gZvcvB/m2JphNcG1nH4fmgw61mzKXR6U5i5v9Q8Q/SgVghMzFuCyyVRmNlQ
	9sPDJwnUbAVOa99y7qE5DA18Pk0qCB2r2NMECg/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018057bbf87d-e0a706f8-1c30-487e-bed0-cf6b7fc227ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68dd9baac7218d9f3cff80ca0c1ad84bdb862187813a026a7f4f51cba4901c2f
Date: Sat, 23 Apr 2022 18:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650739378
