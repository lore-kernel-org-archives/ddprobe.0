Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD847B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D79DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666388453;
	bh=Wc/vTaVN8UWZyl8zLj/EISVLkgxAjeSrD4AEtS9WoAg=;
	h=To:Subject:From:Date:From;
	b=qy+/C0SCruGvlrSuXixDLMj0kOUp8XqwhpuYqPZnN3L8yFU+eKy35o+szq1IOGczB
	 /TBJTjsmudX9Y8ZJnXbtBrPOTDtBMJfYsqhkT86ptwcCbRxaheuN7719FWSW5N4NGW
	 Kcbq62oLGNBUuN+KRSpcLYVCQSqcPesf6w2mOpquHGL0inK54eZGKV2vDrfu8N1SP1
	 cR2PePFgLwWofYeI0TJQaCWIrVDjq6leZ6g+Zbbf+aw3RtWKgCEk5XZ4Fr2rrU7Ozr
	 bVkbcNMsz1ZFhOnD5dC9Q8bVJe3vqknq2zfbA1AogL1nFDFQ/6jNE+3sVnukAodnPY
	 FEWB7Xx2Z86+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56CABC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166638845334.17212.1526169445576074341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a77875099f6c0c33a5567ec77a15f694eb1c80ecd2fe800f60fd859096ce077
Date: Fri, 21 Oct 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666388453
