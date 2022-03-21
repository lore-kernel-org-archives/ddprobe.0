Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B3A04289
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647867984;
	h=To:Subject:From:Message-Id:Date;
	bh=ljudfespN15xJ8/JhdhYed1HlL24tjPG2/7CaV3jBE0=;
	b=Gt5LUNIeJ6HwwhzYBlxHJRL3cHaXNDyykonnYLesCxuah5jpPG+NhmUD4GcWjUJU
	tEfyqyjemdENZYkl3G5e5ZKFmgGWgugIjGu3HH1CYrBSHdoYK4SUJ1lnjtqPX6kgvmk
	418Z/PAaKgwQaW1128GDcovI0wBmh0VBQs/S0ORg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647867984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ljudfespN15xJ8/JhdhYed1HlL24tjPG2/7CaV3jBE0=;
	b=EGrsIMfyJxr/PDHbPTUtlLp46DrNZ6SFbBq5vxv3vxFrWXslfGfmH6XNoFaN7y69
	LW+4Z5MnjU+CxV2DVT0cqNFw5oABp2hCwykJjdxjn/qDmWDcxhuMedI9S6mqBJPQ9+H
	9/OQ4r0X7d9/VhFrciiqw8Lc0S6B1jluIpHsBZBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac95fb64-1e73b960-acbf-43fd-8788-33ae5950877a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc4a325835a6682ee0d950534d6dfd210b9b25ac71e942b2c390a7f3b6a9d138
Date: Mon, 21 Mar 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647867984
