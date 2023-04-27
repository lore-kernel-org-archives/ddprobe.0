Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5958CC2CB
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 19:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2388C433EF
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 19:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682622126;
	bh=228jkEepKzLWp9Qu7s7rlb2fK7jr1GnMnMXRrkSufso=;
	h=To:Subject:From:Date:From;
	b=nxT0V+QS7qpkCWEb01VV3AiKeHxSR46EJmnEo5pz8IDFKVt5o12Vrv9sLvNxHk0nD
	 jFCf6+k7Eqq9JRiL9YaSn+oS0LOYOdv14m/wwxU5Nr3fD3Uugd34o2qHH/IPYnx1IA
	 8v0KLBpnl0YZS0IPYnbdewuO7A4c8sB5lb7p/pT9ZlFxprBYKvlZNDUlcbnqSGCt3C
	 OrtL8T+UG3WcKSKkL7ShKrryx8DQVtYeS5RggYTQQjQVKqavO4//ACpIci8VjUo8sW
	 g2imOfXkC4hxoxSi9uqs15zPC0qeC9icjT9iiIYXaIyYkf/GyQTQ4ojgKn721q23/f
	 d75IKjOKMvzdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF8EBC77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 19:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168262212583.22223.11671623768242553125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 117cb2750570df57f807c721d054c8060b6fec320a50206803d40b97198bcd21
Date: Thu, 27 Apr 2023 19:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682622125
