Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A10A2C8A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 21:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644875184;
	h=To:Subject:From:Message-Id:Date;
	bh=TGUfPVablgHuAQcTXrMYASL+1mHG607bUzqoeLIXr8c=;
	b=f5vrbIzVKlWaWaApKf3S6RNCciHwvRzazRimOMSynet10oAjZLelkQz/2G48qs+8
	NNcGXFw//7vCMyoivBH4xgzbTbSnVzhmpJoZIuCpCFBGPi0NtlaLihCADtWp52o/CNK
	gwEjZf4Ii0Tl9LvzUVzVi/T/SLoAYm0Y8zxAlKcs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644875184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TGUfPVablgHuAQcTXrMYASL+1mHG607bUzqoeLIXr8c=;
	b=ioWwrOV1RO0eLDeSRH4DBNFN4vgb5I/AWTctezWNZRCZQzoJsR5PWdss1UYte86c
	jn0JuLKseoP+6AjxlxY+GUjpn+A4x3zhNIELgeZIQit0p0wEbEGZybcTd4s/R9ETEMv
	r9a3tutmhQWirR36IPvB3kdRq/ZsQNsPY6d/80WU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efa337a9e-12e78376-9fff-4cce-9287-3e9031dcff9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e0d708cd62a352bc880f794184dd77e124731ad3eca686513d4f8234f6dcc06
Date: Mon, 14 Feb 2022 21:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644875184
