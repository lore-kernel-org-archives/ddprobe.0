Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B07381E98
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785942634; cv=none; b=W0lhjTETp+d+iUxU6ezrcH0us+6gbpJWbst264sc3fiAr5zBvGKhh4algH1V96AGVLgzSvSn+KzSxKBEfcq5wfdZ9JR/pNVDTc1F7oAAclOmjmCUq2Wmbf1/QMxj04bZV4vVu/O3hztWzQ1mx4+35FvL0swEuqMTavt0uZWc7WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785942634; c=relaxed/simple;
	bh=EGVvsqsRdFuTIo7qv1c6079Y+mrYRSHYAaHkjZo6w8I=;
	h=To:Subject:From:Message-Id:Date; b=JAPbDd7CWQiCKwTg3maJrxIJ8m8yXU5smtzxqR+8z9icJQWLX3JJqDPu+XfVu/8TApTDMSB9VxpvrsUIzsuXVARD6W/TZq9oFGQYWMFhAgbLP4Wld6QZF7tRXy7JP10t75I2BQaSGYy0JDxnCZc4QSAH/OH+uQdDSk5+qQZoF1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8LZ45JL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8LZ45JL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C49C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785942633;
	bh=EGVvsqsRdFuTIo7qv1c6079Y+mrYRSHYAaHkjZo6w8I=;
	h=To:Subject:From:Date:From;
	b=B8LZ45JL/ZRKzTDIU6jxF27RXPNkj+LaTESNIkjQlv9zL2XzM6kv4HEUaUjJ4QPOX
	 DU1ggZA5YVGuQXlqfQ8xMl+eCHFBNe9/yLhNSsfip8xL5NxZN4zmlhHNtr0C67RtFF
	 Raj1M2zk5mFDGQq8RsoTBUkMCtZMN7r0hrkLPEIoqdOLiq2a4/VGvBTNBuCqNk85BS
	 e9Bf8spK0mEzjjiOa6sygJOb59u7mRfBT4dCk56Y7oSI9tlWRv8D8uBsgyDQLFtpQd
	 2U9EfGb4LhQt7dhZlm2WXYPSVnc8a1I5OdGI3aQQnua4J7l7kXiDr4BiRKBSCzM+vG
	 5uN6mkOXrmB6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00DFC55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178594263370.3392.8965751420998865171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e791fbc00cb031af0e29fad482ec4eb1687b10c31de54bdbb7531c4d0589743a
Date: Wed, 05 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785942633
