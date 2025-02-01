Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68131132132
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738441554; cv=none; b=NdTrLlKgTamR9ylLf3aimNlr4T3tpADNtnBdVn6HaMh2xryZ7Xzu5sKh9sCWVpsRARzKAu03V0fcdbZH6NMwhoh+oBsNRGt9DOTh7aJ+l4OEut8KKDb88rKVCZGn27jug61qE/NXklAQx65k/S8Lm1TE6sHp4cAA1ffTjqV5pXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738441554; c=relaxed/simple;
	bh=LaHhypisrjuxRtOzVmjwvuDhq1p/zl9gKa1t65E3DbA=;
	h=To:Subject:From:Message-Id:Date; b=aQ7QpQ78maKVjmvDYwFHM2StbxaMrEMyfPm/5LdJBqtbdLs2o1WTWCwHTj2ZbWDRtdP8ZPTjIgRtScdMDp5ta4a2KXxQP0WBg13XxYkEqxSsN3yDgzx0fODDoxuBqLsLQBZ0vwJRpBrqBtqhJOPdBqOwnY+oraF3kamTF0kdeyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzjPgLB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzjPgLB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA524C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738441553;
	bh=LaHhypisrjuxRtOzVmjwvuDhq1p/zl9gKa1t65E3DbA=;
	h=To:Subject:From:Date:From;
	b=HzjPgLB4uNbE8v2cT4q40m+4GvKpndpKSZ76NahTOB+4/0MHvmTmSlZRjzDKuK+iO
	 a0kN5LGRILeqqukyoInSn/KUfXuZHRw8FZHiESmJmLhSnTtaDLanJWARXslfwAcVTc
	 oGI62fTU5xvSSplk6U67sbiwqZI0BiF/7U22jQ4YxosuVLrTMPO/1hlGQlWzkDoVOd
	 qKxBJJpR/TwaowRijzADU3XSRIWke3rzK6OQtOUNPvewQH1y5+yumIynrKy5R77SsJ
	 lGWwsBQzngZmLHpevkj7HLQ+8L21o0Ibx6om41B174+LiKVt0OqF2uH30lo8jZt+uV
	 QYv38vTwGPqeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A36BEC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173844155364.13012.10889565215577437717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6734155cc4be00e6476c3f9aea25245d4c6b3ff44cf2df7d6fc8054b452ec0c
Date: Sat, 01 Feb 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738441553
