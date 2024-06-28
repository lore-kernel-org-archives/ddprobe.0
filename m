Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D8117C91
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719535463; cv=none; b=L6i8LrYlED7G7xNyFIdAGCL4PsHN3fSIug7FCIuKnyhBXyDk76ZmEhqhSmjEwhZd/BnhOome8lDd0yhwrEFLO6ZK5PhMoUK2881oK03asYgvksFWCIUAl7Bsu1C22va4vbQbfz25D1r934kC1YUbX1L3RfTj6PsyIPFLRavQA2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719535463; c=relaxed/simple;
	bh=qE4sSoz02KX7Rg+wo+rMZo6lcUxPaB/BCr9+vT8cpbc=;
	h=To:Subject:From:Message-Id:Date; b=qRCi9R+YxELQDHAikO2jDccbpYZG6ePEG1zYqPbL9SxlVuhGajkFIllt6X8atmpRdinLZ5O1Z8s5NK+m6KQANGl6TFpAi2x/h5nKzC/mMKk4wVA9TbB8BuyNvzz3cmI5zDQvg40WQXBcSQpWnXB8Ew+Dxwf+mKNJaKWdCX6d4lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBbnCklr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBbnCklr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E35D4C32786
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719535462;
	bh=qE4sSoz02KX7Rg+wo+rMZo6lcUxPaB/BCr9+vT8cpbc=;
	h=To:Subject:From:Date:From;
	b=nBbnCklrmA7l5hHem4If78kRc0GDuFbK8N0Aw9hFxNaa7r9hoUOcVnY8jl1Vqe5Q7
	 5gEgTdmPiBkiMoFThhocZYtgSt9GrzFiiJ1fvh7YjlGy/BEPc3hHgen1ZHxf9Jg3ZQ
	 l8efCJYAl1mnU3MtFanDmmcSBtaQuPBcZOLpPbaeG+K8l8sVWAt6B2trvl7E3xmHrm
	 iD0pr70HQwtyJxuzg/Fn0waQJ6rh5SkReuZN01bxiFfBhScl/6t+E+zkDgkYAFjzyu
	 DzA/gWyo6R3SBDngnKgn1HMRjv6YG10UeCPP9f091b/8db/Dt8Ank52isek2c38qF6
	 NolHM4LUmZsvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF4B6C30653
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 00:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171953546281.11257.6287844439259626907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96af70721ec0f50af057e4441fea358854b0718416dd373b85a43662f9a298d
Date: Fri, 28 Jun 2024 00:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719535462
