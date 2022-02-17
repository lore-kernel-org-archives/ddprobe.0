Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89ED93D61
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645123585;
	h=To:Subject:From:Message-Id:Date;
	bh=fWKJHr4bbh4yUKwfIbufeDk6xT7pABp6MN3AJD35DYU=;
	b=IKOcv7y3w2otUfskS6fyPViwRvmLXivQr3zhvltoM7apDdeBToFa+ulIwgnCBjFj
	8bfXvb1vCUn3HmQE56V8SNxGZdO+wZAroMoc4QWZCP3d0qXlKForhbd6ETUgrhwtBjb
	chjqiZWIeA+XO4wUyhl44NsRLuMC+RI4QLJ9pcrc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645123585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fWKJHr4bbh4yUKwfIbufeDk6xT7pABp6MN3AJD35DYU=;
	b=AWNcdT6pSPhlZsVocnphBIGapvFTnZZ63WGmQRmoYzA0M/Up0sJ+Sw2PcRUSRmGz
	GEBZSe1AeI6y9oIr/MvhnfV0igxKYGUeEWBDtBHkrIK7UWQpZ02OfVkHrxYMYmGiMSM
	MiDav7IWjnQWryxa0JXAdlpWrRLSjS+5xPON0+tg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0901c359-1160df2f-aea6-4f28-910c-a1ee38d4a5ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7badb8a8a975768b228d4ad3d522a2a3f23dd32955543c8c8bd37ef8c4516175
Date: Thu, 17 Feb 2022 18:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645123584
