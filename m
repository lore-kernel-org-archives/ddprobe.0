Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0A5C6AA5
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C450C433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662763853;
	bh=mNTmAwZL3OJlJsFThFX0uUwbNnQ4/0MrNXedGO+LEOg=;
	h=To:Subject:From:Date:From;
	b=ulzrK0Zz0br7jS1GWgFmxWSFVGmF/F29gTF8A/VzeVKm7U/BrnynY3gfJou33pvPh
	 xiwbtTtqshlGnRieb+9+o76F7bllrdh6vZAO0EgpIyADqEhkOPTrZidSLzRyNBh7Ke
	 dPwf6qMZ8DusAqDjhwBsCaryY3DSjB2OvMbJUxpZ+j2lWYF60jZq3pHG42QsTei93N
	 DKPPxAOMCeiUMdDlYVQkoFMR5WGgRQ8QyuAeAkK2anTlIn43r4Uvt8kPTyTN6D53y2
	 5rd/fJ9RZ/ZnsRdI+d84tiaOefLoa6ubfPE/cXY8bAJbaaoNI0Kv24gjEYt9n5n0n6
	 lSswz8phehXQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51038ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166276385332.5854.7401948707500899316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8ee5b8f7a74526ef8ce08c3f9a28446d6d5dd7a04d30bba14a8246b6c1dca7
Date: Fri, 09 Sep 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662763853
