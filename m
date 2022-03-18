Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735897A
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 04:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647578184;
	h=To:Subject:From:Message-Id:Date;
	bh=yTTIJWA7KiXmD+VUuM20PL8RKUAo37L6xJD8seI5BX0=;
	b=feaGby1Y+zPfRkvKqo2rjhWZPKQuUHEYUXBNZAEqkHYngmMeg3VpMYa2o5bUNupV
	137bH9Z1OTyaaCrHD1TxHfKGWzR+su2KJGPhy/zphmht4msMgWBveUF450AAvrrEuXN
	7NFXV8cDCHk7RI4dvXSWcEp09WMv3MozmbKDbpBs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647578184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yTTIJWA7KiXmD+VUuM20PL8RKUAo37L6xJD8seI5BX0=;
	b=lAX3AYwfXYnGkF0PKY6a2GxWF4rxw4A1opP19rzgRjR01fv5hhC8ai+NmBUrtaqE
	Pd8MdtkFtctVKm4a///MiZYDQmG/ZhhfXXy1ATYp5oLbM4ppFPMiduhQTTxUjSlBpp1
	XFLCazZOm6aHK3fda3nGdOiI2xAlggokZtJWxGD8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b4ffc40-3ef41a0f-292b-4d57-8535-423131ce4726-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc213e14d3f807d43dbd262052048af5bdf3f67fba1b54e67f71851ce9ecd213
Date: Fri, 18 Mar 2022 04:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647578184
