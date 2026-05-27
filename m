Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383D53F20EE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779892354; cv=none; b=Ke0nhl3umMkpmaCtc3QzdKFIbL6KuyZzmF7itacKJAAzkUZ+hT8YWQEN6bZK/gptFL+6ytI+8Q+gGKn2IHqP0+o1r8BQjkaCdAKAD08tQrSAomshUijnwO2lTMcwyewHwufhXW0uzaAKkc5V4MFuDstbn7JY3nGg3GnDsbNB4ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779892354; c=relaxed/simple;
	bh=QjTOzo1KEpDHlPtkoGH+/qHsvxqM+Z0BKs5SsgGCR04=;
	h=To:Subject:From:Message-Id:Date; b=mx+NfGJOD7W/n/c+uVUgkNIAgw4yvJo1UdsiqZ2SM3E1BHL9ctYIpDGgJZ/JQ8e7mD6gKCE9G+YPp2JMY70t/mNzp8N0K4W5ohrMWlwmFVtTwTY8Vql0n69SiVJmgWQiqHnxZJJTI4UJVXYZudwZKA6B5V11vbZl+2xSZKD4Da8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTquYUk0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTquYUk0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE54AC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779892353;
	bh=QjTOzo1KEpDHlPtkoGH+/qHsvxqM+Z0BKs5SsgGCR04=;
	h=To:Subject:From:Date:From;
	b=NTquYUk0cff/fFjcG0UsIDlTMvQ5AKGzSjXaWkxnH2V7Yf7++VG2CKCgkC6UP2sJ8
	 NMQmm6ZHNWF+JvDjlh3M694Obn+4oyTbcM/I+a35EtwRy8BKHgujNIGTYseqRnXUIQ
	 q3482cufZa7JTo8Qu+2/opb175XV8cf9K2Tb6XeiLb1YX976Y5OnMzGv4R5Yk5vVgY
	 6XaMBIxoq4nZthIEJZdI4kZrJDrya+MMzktxMSsnSZZ/PEyJimPwJOfz5JdBrGbg3I
	 JVxXU1N/iKxhIZ2Smb1liUce/d/1eCM6a1+WqcekvmirT2828u9k0OU61R+5M9IJ2L
	 cIQaP268DdSgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F36CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177989235371.31358.8935751663857616539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6ad43de3dd18b3ba274d283480467f0dc2361aa9949cb379ea150771c882e9
Date: Wed, 27 May 2026 14:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779892353
