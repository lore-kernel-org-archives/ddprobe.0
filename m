Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B84391857
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A676C433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666063253;
	bh=AXW0ZgvqNKbuDStN9AAvNFfGQIGkJS6Ggh3+9p0xvSE=;
	h=To:Subject:From:Date:From;
	b=es38WiUbF6loTZ+cIpYJLiDODZc4sq7Ask3UDJJLchZ18/2c4g8q8e75nVOKUnkIN
	 SgPPmkVrptRHBaO4zCXkJohfTJVwWVJL25RpU6LfLIqpzJxk/Wx4dNR0YwVaEjAA+8
	 KuCLMyDU5meKDJ4xPlW3gY5k/+/2fqMJnxNXZKyvpiL3V16QZAlqnbrzCixZTbEJ/r
	 KIAxmkfDMAttYoDkHrga1AjtawRRElUVNa7XZUqzdvKyicgjiE4XciB6ruBCc5KVZ8
	 hIvGavAaUyiN59AZcJAlFXSMZRpgS3RK2KFhtYts2P3Jc78UgZnalsDgaYdUmlMNFK
	 Mer7kSa1Dzn0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51346C43217
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166606325332.13163.8848025376112595561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95269c6d6fa1bfdff8cb9422ef70c83a28cd2d2b807aadb5808d4cbe94fe9f3
Date: Tue, 18 Oct 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666063253
