Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE82629
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736726754; cv=none; b=KEjpg/kb0/WAOv2DAJ8MHUfFxQNMRt/8Rj0/yzqTCojO7xWm9zhW4qHPBLZux/F6Ef1rVqcLDs9DauxWezjSDaq/UnsGATHdF8TXijT0O+lrryS6Sai7NR504oYVJHC7oEPa0cdW8gbWt2jKdhbPjYHsEgKTEBCP8sNT5FdvJTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736726754; c=relaxed/simple;
	bh=I/X4Pxq877LqbdMPELkaP7b1UQD/AauVd6MmiZH7Vvk=;
	h=To:Subject:From:Message-Id:Date; b=YREbRc3Q25S7N32p0TkmMl+y9V9i/G+lVPNBQH0hqMw3CTSCNbSiKxR3/MdAcNbGk7Sqsqc3bfLp4loycAHghbnVnfIkk8yAdwb3MQQJbVUyD3bsyLgWjtdUJXMWrUTaZYzxbWqAafMckCm6fWfEN6nAUuA5+2EgQ2cxzqeL7Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMz8CW+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMz8CW+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4EFC4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736726753;
	bh=I/X4Pxq877LqbdMPELkaP7b1UQD/AauVd6MmiZH7Vvk=;
	h=To:Subject:From:Date:From;
	b=tMz8CW+58QaFub4iW3dcg/EP0Rhv58E2ezzdN6ne9t+K3rr5dcFFgK+VGORml1RZ7
	 LsCZfvOidxKKe5OBdc+O1u6NInM2L725Wl6xPoGLNNx7oaZXDlgzWaGgbw5i/adVb9
	 nsZtF3piYffiQMPjVFzH8mIhTLyn0G2lKlEuLANF9YviyqvAL19nFxslmLbcsMLlSC
	 T+qte4dnD+nsYgKQ1W2nybXt3BlZwqzdgrVCF0KQJZPGJF8pZa0UhDo9HlkLgEQPtL
	 sfOaUUFioyjThb6dgekyDz2G5MVy60UtbINgcMiPWDk8h+iFU43Y+UR+QWhxQxCZ0d
	 pWXtIQEWG4/jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A40E0E77188
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173672675360.1756.8596413795846065306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c90c60a4864aaed81531013363afe9b00e01ac076987256b49d016cb2dbe01de
Date: Mon, 13 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736726753
