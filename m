Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AFE2260C
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753761594; cv=none; b=P5eLLPiKSxH3gaUCnmC/HtQmwVa/XRWAu4Pl4nahmlbHfe7cMTJhSdQvVQAbA7m2MjZvFexNT7TklnSRs9rvLOH/iBT1Q2Pd83aJuH8RRdJCJamNNGheFZBqnIQbMdEelh9OcOdWZe9jjn8mmtzB0AfSe/ZhVe4TOT/VbpVfB7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753761594; c=relaxed/simple;
	bh=9CY/kLSOH9XoT4lXe83FZufJVXd1gqaKcpU9qP5Aa54=;
	h=To:Subject:From:Message-Id:Date; b=K9X0ETk4EERI/9fM6IwQoblH6KGDWTuymizobBD1maG9bkxQSbIgOexuRg5Ymvn/fKvOANbBKb/Q5/ViDpD91am1KhMf4cd//cYQ2Fo+0jyvDxPm/BaRbCMns/BWsDh+GCsM3E6wX/XeVIKjfZ1qi2ypKQ4odhHJvo6FFDTDA44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5xhIyBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5xhIyBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17E6C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753761593;
	bh=9CY/kLSOH9XoT4lXe83FZufJVXd1gqaKcpU9qP5Aa54=;
	h=To:Subject:From:Date:From;
	b=i5xhIyBL1qviNPlqUhzuPClR+9tCU8Q38S4KiFpSEhIFszuazlw1nk+J+aH0kWXZf
	 VzXiRr92vxjCyQ6OEU4XvEBV81elrjfkTGQH1pZob0b/zJv+sEbco3+nlfEQFLn130
	 haPwTHRyY5pBgEjSqAYq2/8+YGU+cqowK9KoSwH887Ow5uxEoq6VlWz8PY3cZg94eh
	 FxVutVjziFiDCU5FygJzD0lKZuHXOBG9te9zZgUhhHwE7c5r7btQQHomXFw2VcoKSq
	 qIO2Wo2LoG9Pq2phU1f5gkbrGZ8LsnuQ+fW8+AVNlT8skYXXnROpdF9nNo/vXliWZ8
	 +HaXCtJJiLt9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E34CC83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175376159357.13847.13463620631382383227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f584b3ef122034920df653339696edf87a1a9b34ace049171763dfeeb16088e
Date: Tue, 29 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753761593
