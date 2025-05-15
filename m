Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F249200132
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747339795; cv=none; b=JwrcWTp9lnHAzeKXhaDQjqE3ku2q7AMVwebYuC/gNyNpRvGXPFjOsB03ivyLnfgh7F6VKdXepFu6rzkbFo5kWd/F9kkabixRi7VuJ0kdJvDbXqCelBRDNJ9eQWE0f76GtWjWNIf4FxzvF+9zNsHqhjhjFhZsMyIBL7nQALHmtKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747339795; c=relaxed/simple;
	bh=MNmZXXkIvNBQQojsZI7amLSgNrlt1A1Pc6jZIti5H/8=;
	h=To:Subject:From:Message-Id:Date; b=NpyzD1U1ueZJa+vFSYFiv5NBrYeOamulYqOknWfXtv44a5BoUi1lDMVODGTGDPyhGIGmYTbIKwSpL2XJsOvNcD2MXR+b7SjiIXwotmJT5iuZMcIoRii10ZrTUOvS6BKVE+qFakDl9MWXKg4FqRrw79vrpdioP01mURBI3DtyLFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lhk+OKjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lhk+OKjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E64FC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747339793;
	bh=MNmZXXkIvNBQQojsZI7amLSgNrlt1A1Pc6jZIti5H/8=;
	h=To:Subject:From:Date:From;
	b=Lhk+OKjJEGYG71rVZMn6lgaMRVvtC4NEQKzLCxc20kPM7jxPNITqU2AuDlhK8wqPG
	 b5VV0oKG+lbIhWZXX2AY9UoNj5A/bdmWZrWJXvnOb5LqQqJief0STKCA+COTbKRLsH
	 f1AHRYImE5zC2+SxpNn4+bZPks8kapERGDg6t4NKcXw763KJG7Ty4tIEP0FL9OfW07
	 mgW9Y2BaBax3duDO3ieYRHqcaY+vdJ/5jcb3wlZMZKZos86dDYHTmuMwSfmWavwzOR
	 vN6M3Df8fTQ1ZfyP03AO83fxkZ5f/7eefD+F5YCv/RxIBdL1pQlW6JeY0IX38CBaPN
	 rP3yn/wSmIHdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F75FC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174733979357.18881.10642060370211647115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79fde9ccc3131fefd0699c8a5be3bb1f011a1155923bed553ecaf0cfb67daa61
Date: Thu, 15 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747339793
