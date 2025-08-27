Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292012FA0F2
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756290594; cv=none; b=dx4GKMBnwVsamOeZ/adq+KyH+pegKF0NPFMbLYAUzEEf6i/12xGzOj5FR24f7UlBulX7FyqGKjnuHyY7Sn7bue8hBNaqCPB9msj1XeGsp+JmnLNuMNFEeTJqrAsZ7QmehJejjZeGT8gfgxzSQIN5f3iRNHPzjP5mTYHVa+Tfin8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756290594; c=relaxed/simple;
	bh=b67UGc3BiC7w7QfytGT1YNt1RowplvuF9fxfSbhg8Uc=;
	h=To:Subject:From:Message-Id:Date; b=GBQyvTLNPZZgC1EyN8K5XpGiPakSJs5c41Nhujdqv2UG+RGxmfVRvaIUhM97Tg/Ere1ETewAslLahe6oXImIrbr25K4OlLoJjTh1pQf9aUQjR9xXfKz0KNLiWOSC3s4sKPoBQM2hi1I219+CwhRVZct8G0TIrj9+M1HcAudIhNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hha9B27O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hha9B27O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1D4C113CF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756290593;
	bh=b67UGc3BiC7w7QfytGT1YNt1RowplvuF9fxfSbhg8Uc=;
	h=To:Subject:From:Date:From;
	b=hha9B27O8Ah4crg3/lV//iTsz3RECGMFXgtDXcgRAMywxpqSkrTY7/8kCaKjXoWxG
	 ujinW8tXXfRezMnU8u6J95PJeE39fPaZa2RpFunCoSmaKecn/AaUpiuiYNK0AZd2G2
	 sqysv8OiywULGt14C3Wz6P8q3RQrs532JOMgKr6Q0q5C3oUa9iw83main87/BtzX6K
	 cigj/hSJgw5o/weayDg2jNMIEbkTKpFvihJYxgEk3KXgJysyEf2g3hDIGlZQk3NT7e
	 ZACxHbR4OvHCry1FmIyRw/S5fjoCkGZueL4pHddeP4XZEGqBegz4NCT7G9XzSDfMPB
	 RBmTErEZWGqsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDAECA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175629059357.9161.4756239337195407137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 149e80e569d8c4d019a7e8dded9d929d08c1a063e724107cc0eb27b80cfb4695
Date: Wed, 27 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756290593
