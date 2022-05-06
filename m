Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26E33D87
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 23:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651878898;
	h=To:Subject:From:Message-Id:Date;
	bh=f4xGzSspqWvp5GcAm13ZOHsI6AEcIeYqewx7pw5rs3Y=;
	b=jIbSrPudY7zF3uuZq6U/hBoEYnErOA2updxVI1EwON8PfErpIS7ncgXwK3VDsEE2
	gTBYLuqIfBF7FYe7FPoPpvX5754Od+rFTAKz42CEWBcjupT3051QzvmPC1etAGSYvXQ
	9Os79ws5RpU04/GnfsYKo1GWt9rDzyspSjBmwk70=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651878898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f4xGzSspqWvp5GcAm13ZOHsI6AEcIeYqewx7pw5rs3Y=;
	b=eP5D/fg5kmQLHqL6ljU5j2EZHFrmwcakwPUn/6BjQI8kCXG/JfGsraAl2hifF4Nu
	0ZKKdz+Lq4kFxHf5ZgXg0IpFEu+emcc4krK/PN0Iq7kpuJWQ54TNUKUK66Tk4qGnS2B
	StWZ7eTOOJ6h/SdDtQbX4B7fT3blT5kONE5S7GDU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809ba7aa7c-167ae559-07e8-470e-9b92-a9f05fd2e519-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4abd84a2108d214f1dae83ceba2102f453c22e6d1588e8006a441d903dcbff13
Date: Fri, 6 May 2022 23:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651878898
