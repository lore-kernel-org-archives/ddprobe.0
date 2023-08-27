Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D1E7EE
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 14:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8762C433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 14:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693148048;
	bh=hDG23/2tYdW6b9J5JIJmQ/uLetFOW8nCLUotwKfdU3I=;
	h=To:Subject:From:Date:From;
	b=h628PvYbVV9UB9cwOG9t4CXQG3JKvly58nmHzbuw4ACnn/Q1OixUwRyH9MIAdJSoF
	 qvpaLfxW1jzNR1VPPskKNXn78K4zQDwz7N5+M1l25RLJb8KAak9//KMjO4nWdHgOmI
	 e8FRhyVVhqD/fW6hNdl9cHqsGJk4jBbmj/hh8EPizSzSMftKDowqdw7L8tsr68TW3Q
	 ROPUy+6VC0S9CoAHdFBISWbteo6UK4fSYx9sDkkj41oon/9LKtI3PeofLRXTFhCyYx
	 DwbYf/B9VWAlzjvRGRJS8nstJ2TxO6xfmj0jcIJZEEKN61Rq8A7sczdWGEtN2B8LLG
	 h9zy4/jg9SJVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCE3C83F10
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 14:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169314804869.2014.8475318727958712648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916eb4f3ceadb5c489c2b5132bb0f1e7cef9aa54e7d8bf7ae49835bbdf8be4ae
Date: Sun, 27 Aug 2023 14:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693148048
