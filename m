Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FF14A28
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737197754; cv=none; b=DJiYnZ00GBVKQD011Z7hq/Xd0MyFsXb+3KkYuaKeexLUkn2BWLUtZp4K28UbPzywpZSRWdZDTATLVPaqlZZ12oniANcM40gOyDUWWjqDz5TaQjDScqGolKAkStlue2Cvhm7pMV1L9O25ADFTvsP3gmnbz6ohr/eUtpRKkVrj8HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737197754; c=relaxed/simple;
	bh=q2xPE+7gqAtphlLxe06b96PjqXC88g5AAv7A9I3WkSs=;
	h=To:Subject:From:Message-Id:Date; b=KU0Gp1N4/7qNk1O9sPrFGLpDtc7UNlPfPwUiP7ez7iUkOrcRnUUPnoyFYT8pWYtMlVduTLLYrw4PtAI52uTy7vlcF6L7cN9FP6JNfRfVu1Yw/QkXTRvNn6SDU+yjkyQwm9F3sYKWVZKJKbaTnxL68/kx+BHlOXoJOHl746u+FNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttSAYYBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttSAYYBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4388C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737197753;
	bh=q2xPE+7gqAtphlLxe06b96PjqXC88g5AAv7A9I3WkSs=;
	h=To:Subject:From:Date:From;
	b=ttSAYYBOb9Tq2ptjsK7Hej0xoGyOjHskrlbDUTBUPNdC7akcHV9XOItP/mCsNd2iL
	 /CE0LLx11bukRDmj6uXUQCvzdyAQgcAV80H8TphxZE0P3glZBAGZE+RsRCvVFpG27X
	 02D3P2sVlOy+uNnoW+6aPevXXCsx7Rh2UY3iPPtlFQ9XowHzWFyqEstouGYd4KuFxd
	 rppQH9M/WOy/rlHlV0LTm1rFqzc7lmzLqvOzO0T2fbCmOo3MCYSjqdODShumC7Pe01
	 e6Si1u5xF2MdgZRllX838y5xe21+Zx0JgsZpM8YJvuw47irfTwpAh/7GVoyyV6YqX8
	 NCjqgXZvQXhXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937BEC02187
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173719775359.13821.11557785533047102046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eef78d6a84cef49adda7494b9975e3d1716ba6ee712ee2970235cbc4e7f7e34
Date: Sat, 18 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737197753
