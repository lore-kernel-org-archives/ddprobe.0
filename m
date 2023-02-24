Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE7B2902
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 09:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D597DC433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 09:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677229505;
	bh=mG1RnIUYY7vxyGvKdiKJhYt/XeqgohlVZDN3qc7vdAQ=;
	h=To:Subject:From:Date:From;
	b=S3Nd9lVMRP7SNqz7MbVihh/rH9O5f5d5y7Fp/wLu2B3VJUb7twFr1jjUjQWv4NrHg
	 OxpDdzu55f+Wak9ghJMzqwmzHDgzstepcmdaUU6Wtro8F0wjuMQXv45Zlh70/NIaVC
	 RHFXO7Cj5metf5MMQPfPNu8UB9cLDDmgYgzEjUgQp6ehNlpv4Phr6S0AqxXwBnAh6o
	 P8yxBSEo05sp6lcrephoqGFGKDSUHoQgoTAfbaA6I0xcZHxCINVAvbj6QZ78pYtNZi
	 lDblLOgqKYRi6PKf8O0aJn0TKznZbGNpbpucDAdIu3ne6w9jOcpUZ9tQg8avgZFpWt
	 W7IT7S8zsFjOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9615C61DA3
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 09:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167722950575.17901.12165648437568898381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a1e59816c779efcc08e91e38938595bf21568f081fec31082c11c44bf780bb2
Date: Fri, 24 Feb 2023 09:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677229505
