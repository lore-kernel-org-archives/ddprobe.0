Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8BCA7B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75CD2C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665733853;
	bh=10+UyWq7tu1NVWMkMEU6Pfw+cY67NjZ1PoswpP7SPyc=;
	h=To:Subject:From:Date:From;
	b=YwzXUxCfrDlGjGEGIdGUF0Pe3HKo+exeY3/6Qyl75ihIg6amzT/g9cvbPjqHlfArx
	 tYRx4cM5x8jTnxkRGL5F4nbdNZDiZPJoOeT59yhwqUnlefPwHJOdi7f09tD43y4ygl
	 0MKW0S6uMsDK2iKB9xox4MdI0WgefXI/XQDUFcu6dZTYibIHm/ZV82Jw4++f3mfe1M
	 XcpE9vlGjD/LFtFyDImX/duUzCERbTauEgwBN+iQBW4aNF+bLWnf1RjvEynNvQ2Ar1
	 zVKbQ4ZmsVJ6Bq4Jc3VLEherE7R9IER1PqGtWy/jekeHvromCQw03zMiqwfxAXIhds
	 zM+mBaHr/VM9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C69C43217
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166573385333.24918.2195129846511193977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd45579630c43a45c82b54ca82ed27dc20e03c5014d76764307144cc77b2e55e
Date: Fri, 14 Oct 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665733853
