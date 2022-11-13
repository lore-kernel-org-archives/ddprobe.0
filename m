Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E20EC7B
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77F94C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668327054;
	bh=VDI1BSpGANiO/GuXUhzxZhszH85vb+c95Ap4e3s6w20=;
	h=To:Subject:From:Date:From;
	b=W0aYAumKIn9wBsJFwTdbpIgB/oJ5rqD0LSJd+Ld8AHWfIg19GrGnDs2kKrJLJrcdL
	 GH6I4R3j2UFfMB84lmvU8shayq3xDyelAwIZ1buLR/mujfvGo1hENMDQo3o9NOxCl5
	 sp00pYS3+V0kNAJgz7LF4uy/8mNxFUpa2gU5hX42uRqtsCXtbj0vdYvMdKQyizqlr5
	 usHKUTlGb3NV0Di90ih9a1CZvMeS1Bs3MQgsYkq7oe6ZOMqC9AU3ENMyGt5Kew6rD+
	 7Jzi0TlRmpGMzdHj2TjcNxeoH6ye5iNH0HTrk0g9i2JLAyCZhYdeDRbbv3a7N7rBBj
	 gEoFmx6TXWT4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5800CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166832705434.8697.5667651636805447713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db1ea46540fe83f8baeb166575e27360a0f70ba90f98cf3055ccbd1bff1b48c9
Date: Sun, 13 Nov 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668327054
