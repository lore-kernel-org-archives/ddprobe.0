Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F03223236
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90580C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670790687;
	bh=OtnQBY6HmhbVeBp0h03Uz+LVeLSpeaH6beqlvgh9BKg=;
	h=To:Subject:From:Date:From;
	b=e2pV0FhZiS5jnHXNMKVm/cx4K/UbQhrnhT1BhWC6LdDv6fKQTNMK8IY+CO0nsQem7
	 2CzZkZPLqm60ujle+hiMYKRLjAz6Ek+M21NDGOI99/TDaSwk7JNI9ZLSGKsBLKwjSV
	 bNi6Nvak8/0C82h5GUpBOy5Fe6OOvKMw+NZ2xoJGTIsI4vf8esyU3NAtOrZXUnhe+d
	 6iMRxbukZDPpLA+v+ZPnoK4MG6y2RAoNQXYJSLBQea95L7+87LzEAf7hUzpgnnuKi6
	 DGB8tw0yIIVrdcDTscFYF47uCfU5K0giVdCJkiaf9t9QAVmNbCS2yWnyXxUf62st2/
	 MEjeWBZCce1YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66901C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167079068741.21457.848621120710222751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 206f6edfc348418180b381f67bf883b862ad771a8921f0cc570b14c7dd37467a
Date: Sun, 11 Dec 2022 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670790687
