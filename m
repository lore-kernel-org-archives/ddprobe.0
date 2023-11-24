Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C203173F
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9KJmQLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B9D8C433C8
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700846896;
	bh=TJoONY+a6saqcSGYlCOZkVMUK0bMs2JLBav27nSfeT0=;
	h=To:Subject:From:Date:From;
	b=A9KJmQLQ5LssdYqkxBO+BywdHAqz9LHhT5THaY9Nt3AxKyTtrptPpVVhH8zhHOxA3
	 yGQEMrQfEk2oKmSlFBe6wOS0zHGE0zbFIvf1HTdyKzH3lmoiOKs3vK4RAlK3ENvd/4
	 YIerfyOPHvnM4H21v3Fh9fEbS6VgjNnxZfpqXLbrxDThY0iN0jbqgCYPcZhb2OAXMK
	 VBpvNOP2TTcdzaJrX/yRuTnDqRyGM2LVWWnoe9GAsrVd+SoDpO/uTKG1UrMvwm2mzi
	 X7HhkFWT1/JhiiZLN2I7Ja4p6Ha7Gga+dgLBNjO5JmLSIwsJCG9sef8q+aLUrnYFTY
	 Mh0l2VWb1O8+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61291C61DF4
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170084689638.14276.12927917345730946033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f38a85b78b2df4a07ce3e847397e3b33655f4cd67770af238328758ba61df1
Date: Fri, 24 Nov 2023 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700846896
