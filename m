Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A72EBA32
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 11:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E5FC433C9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 11:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687951988;
	bh=yhXiqg41kmfMlAAnhEbB7qlUqpk7pzj+dNIUdO0S1Us=;
	h=To:Subject:From:Date:From;
	b=crSBAaceXKSZpg67fFTtrT1dwXfbXjoC/SHtbr7Dlu0hk3kpxb5+Ydqgcyk7RoPB0
	 /sQy76Pq2bOTE3T0knANaxLUqxXPO7Ud3VcMpQ37CZ+CMPdxEG6vfmP6Z6i6mTWYgf
	 AGwzLPxT2iO7nlGmOYlGpuZsFrfU+rfkp1KqKIJ6SvfDKKm2MBpvVts2tnR0b7TorL
	 B+/cHgsY9LtEi8KlmT+502j1ThfGVYD+PbicZSjzHmM8ruFA0bekNSrywqz/NKE06h
	 7B8oesXP7VyUCJj/J0Zjlt/VGI9hOkd8IFutZnEMGgJHFjnwHev21Z4zDXH0HIoyJ3
	 6bRyWJTNW+i1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE31DEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 11:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168795198870.31064.16146564331553385923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db08ef2abd0b3c1c229f7b08d19e4d5ca7c6076f4ac3b35645c66119e4a37b4
Date: Wed, 28 Jun 2023 11:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687951988
