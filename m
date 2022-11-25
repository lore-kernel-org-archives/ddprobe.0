Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C953A2F41
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73051C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669416654;
	bh=yl5etDaaG70HDr0nrmeoLqddTZT5aGDqDQZM0/l3jGw=;
	h=To:Subject:From:Date:From;
	b=AcGttOqoDMfpJQouip8GARxu3w2cC+jSVX7rGZRjS0ivYWwGV5Gze2aM1ysgcayzU
	 n3HuQ1Xyyb2p645SfA/VcCaYOAnybbhaqpXpnftc4rRulYQ2MFwoc/MG+Bq96U1wCK
	 N5BLMJuY8qL+y9ap/9Nd5+1BrHv1EDATsNB9YXw5amCvhKaop9p3ERhCI+18Por9rn
	 nnakTeKBL/r8ibJ4rg2UciBqR+s7oS/HnFRdXpMEPo0X7OaNCB+XJrG4AHaPMl9dkP
	 23Lg8waNC5mQ52sYIZLaKU0gz8fio/nirObbO/ybI6wiobsDU+Y3QdUjb8EPbyofBb
	 uoQioFmC7J2AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57191C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166941665433.11157.7479651267152274207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e034ea0f01fc3f2147565750c8efa18b058920aa6e0f0458fa050fb5a781d9a
Date: Fri, 25 Nov 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669416654
