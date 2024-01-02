Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E31220F8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQRin4Ta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83894C433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704181096;
	bh=xvVmMaBzUKjTsgpsT88n7rv8hB6mYOcxwTVQFyi4qVk=;
	h=To:Subject:From:Date:From;
	b=oQRin4TaYmfgmprfFc8PAl7hZ7MdYc8lWwWNMKGsqZNFaHho5TxUaXzzIwz/5VRoD
	 OeKapck1RfJ739zVHyYLCBJ3537soK7Nbw7c1FEUfQJ1Doih6UJ4fB/KOvKgVKhaYO
	 v6cGsSyqRzYbpKtBaJ1J4gLBLx8blnuP5LB4tbGAXKYBQOU5g8vnuRsb/5/suLcbEH
	 QCu71+CAoHkrN2BlRKlzKAgKBsFogG86vxLbWoJy8AyTTeASdZXf75xhiMsDvK7ljh
	 kG1KQdidAhLxZzUpO2N7QApjFYbKoChlQwC9uDvkOLxPvGZ8rol7vgFuRvRo57//up
	 GDSR/gUuVr+HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67234C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170418109641.13840.8998757983078401820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe43f6588a1b5a31f9bbbb44e5537673f9817007d222efd87252e0afb1dc6b0d
Date: Tue, 02 Jan 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704181096
