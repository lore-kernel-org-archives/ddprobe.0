Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400C6290B
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 23:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A41C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 23:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676246045;
	bh=6aMAOiOV9IGdKSx7X3JeFXQSpbzUkrBwThbYlWAgNm8=;
	h=To:Subject:From:Date:From;
	b=F1J0J1EXL2pwRi2eE5mLZ2DLpJ0Bzb0k0kyP9PTVhJKb0rwamlWXoWxhLEC6+xDX4
	 DwWn/qEW2ru4H1i05oImiPQ6qseuFPqwCFGA8peg49jbxOfTONtcs1X2NXdNwI5X4w
	 tcmfuy8MEhOTfKnGgJMO0naWQWFISXaxbaQa3D7SgFRvZPfSBO8E0PIiOGssgXbM7d
	 2LVI2wtIVFSZdW9hc3watVdkx3zkNWvfJF6jViwZjnFJ5B9hZ/PsG4HZ7qif7xFG6F
	 5CgUX3AlTygoGHL/y6E/T7OJ+YqTH6SVcSyjsVOCXF2zbPAuIjm8J4pqJzU7QS3P6S
	 zd2OWka/b11qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F5FC05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 23:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167624604573.22308.6245377436308416747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a6cc29d82da2b940a52a4b862f38f6077c1c9bbaf1e72b7f33a732d3a76b82
Date: Sun, 12 Feb 2023 23:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676246045
