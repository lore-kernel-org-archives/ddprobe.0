Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F1517E8
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E9F6C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668741054;
	bh=uYLZIOUSWvx5+e89gc92dsPFgp42jKiGZA+HXJmsbGk=;
	h=To:Subject:From:Date:From;
	b=JQUDVmeNu5VhuccM/8QdsKNK+6BfUA8x3al+uGpMFEqWkxejw2QBTHG6z8kkaGe/F
	 GAVOckgoDL6N99tlsIbJlmuKuNliG1gO1mvkPYK+OZLIfsv8UFHxMiZXWJa/So0wA4
	 +3F97QHh74ZTswWH34WYFlSRnaHGIjUNSY0ZIl27pzdv/ZVNBw0+f9zKOqqaMZEwPc
	 mHuhC78djCQZKXsXIOqAEcRPqfEFHzRisLOBRH1EAWDzDo4P0LmHmgBHiCZ0dfEoOf
	 unYdnjskS24HlNgpJPtz3XIEhdK4JsGhIBrHMiVwJ2QRsoq+izHXxiiJwYlov3xBou
	 BOfPJzSOEFAuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63021C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166874105436.23935.7683493333510119270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 005a27f2fdf3fe4da11a33bde084c0689f09e78af90e26083dc312262375bf0f
Date: Fri, 18 Nov 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668741054
