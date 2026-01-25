Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FA02517AC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769342634; cv=none; b=KJNXcE1uBXtcn9mDVmW4f32jDQJ3e1xUIUC2xabRFFjKOlqBGBfKbnCbsXzprofxkLFkbHJohwF/Vj1IWqw1Yq75SSriZgDcIO87mmMDPMWlJxv1+0hCzUceuKZEWC5qlS3wvjZ1wQBX+XlqX3KKOMugdxFXNgNzx/a38N/822k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769342634; c=relaxed/simple;
	bh=bMI/ORON87+jzojeQ+PivOD6b7o80JgPWl7rJcxqdRY=;
	h=To:Subject:From:Message-Id:Date; b=DWX6HtunbD6wjSttIhmFarASlnVAGGoy6QLs7ILpBWd7ApdvP63W4mgzXLTr9KoQdFaa2JJe7k7uHDWE6jGYogjlYHluv2nyMfGLDc0gI3KJa8BMw3fw7U8i+jZlAwVBl4GRD9C2JSv31RessjcKA9b8x7Dd472ky0pj51y7AuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hW/g7LDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hW/g7LDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0A2C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769342633;
	bh=bMI/ORON87+jzojeQ+PivOD6b7o80JgPWl7rJcxqdRY=;
	h=To:Subject:From:Date:From;
	b=hW/g7LDwY4JiTU4KMRChDAFUe4SMmYj7chYJ2YTs7oVuGyZ2HZcz6B4XpF34lRkOA
	 9YBc3Skgr5LT4rX0YOVaaVNJcrvfzrEMcNevvszEU9a252XfN4LyOUPap6lCpCBhJ3
	 Dkdw0Fw0iQlujONXF7i9RCCCXwbYRnFqVo/ZPKPFlZ+WNQdlgiBE3HYIHdszFMZ+iq
	 NalVLC4KdA/wfjuatkNcVKu66LUE+tN1IGsA6CwRnjl4rNv1Gepq0Kfbr+qYUUfVjy
	 XYkFHkw9c1CDiZ6JyTr8918PraRKrGtPWS7YSTVt6uPfinQUpSnax6C8k9ITzJAACi
	 Wt8RpxeOqb/eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A9FE63C90
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176934263358.5750.18005758173415201634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ee45e3313ece4b1531cfadc03bbae946d104daebdf27105a4d770073c60cb3
Date: Sun, 25 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769342633
