Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE4B4C99
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647623785;
	h=To:Subject:From:Message-Id:Date;
	bh=Pg3enPZL1DCbclgsJcQ3MjkRPj/AoDH4JAfh2PPsMos=;
	b=GQxLuT7ZJY2sxvv8ytjUC3Ji3RDrU6nUc+SCs2uCJ6kVK7x94W5LbadL0RaOOyWH
	XkWTiMxFUiL/wMCllFnqOS8eIbzCkVg22HkCwg7ZZ4DnSRS1nvDPeOwovXbapngdWl/
	7DWOhmUPAEpr4a0/b1H7ygfQHZVsNn4ZQeRYyO2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647623785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pg3enPZL1DCbclgsJcQ3MjkRPj/AoDH4JAfh2PPsMos=;
	b=A5bXZEul9iJjdEUMHMhlptT3cvjZjluf1WN8X6OqTgrJ5LbpoAZK08haSe/rLCQA
	2M01UZCvfCZaAkcF4Z3pe1G9fYOLrFmK1i/gU2msG6sUCzdzQ1fqLWpxefhcb3feTp/
	60Swr/B000fVGsCB/mdY8HANjmuJLnAnnNch1hMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e07c9b7-fab2004d-95c4-4289-998e-06c7f0188f87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06ecad6d55867cc7706d88a759fa96867a850fff271480a30b6e77d3e049719c
Date: Fri, 18 Mar 2022 17:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647623784
