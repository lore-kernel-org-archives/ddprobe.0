Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423F710A1E
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764468774; cv=none; b=FwjinUX01aR8UMWZY4iPxkhOTK4JcdjvqzMJn+oynWOKu5+O6LAFKTyUpieZi1mw2QEfn6p7tPDCfyLm2q7hJBGwA1c0HLI1bPMRk0Elp6vDWAI/i4iq63zTm5q/lZhmzI9eb8MtDBoEd3HVcnWWe4N8EFMEhV0aPySR1AsYkfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764468774; c=relaxed/simple;
	bh=LY328CzcKB8Mg2tsTb5b1wcG3/IdCn3heiKjDxN1q4M=;
	h=To:Subject:From:Message-Id:Date; b=dJRR7RMi23ikSqVVCEFXRq7rrP857bxKKBX2Gyyby+V1SKK0U07wZpyjhzevXKwyKc4sPeJgzNopYf+l6P+azREUU0bBaoyCLkysXu0ZtbZ5Azd7L/I1zKGLFpISwOgnkVsYG/ub+LGHvfN1XpTRoFF51WYPwhHVnFlLu7NQQbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/r1R25K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/r1R25K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA16C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764468773;
	bh=LY328CzcKB8Mg2tsTb5b1wcG3/IdCn3heiKjDxN1q4M=;
	h=To:Subject:From:Date:From;
	b=e/r1R25KeGmbADom8VO49cz+ZEYerv1dPLfhZ/6uIeuqwt/TGPI00KeLlKIQzaM1r
	 aDO/RoOy/oKVc/UO/BYRoPRCewFXtTlg/fE4dUEzyiqu0sTMlW46hUTt+m7JctxeT1
	 BparQ603GC88o4H+LYEAzHeGKMmXVpI9CA6WmjreGSbPHawFcrDjv6SJKzFNS2AMji
	 5j5v/lkfXIYjlq+M4tKvHNVHvhuakZJPF/MBH+3BF5ZOqjIhicQq1ZT/+YMi3/mkz4
	 s+q9i3L8kM5d15R8aWC3jFkDZ5nrG7rY6YbTdkYPEob0xDMrGD+3C4rdgCVVE/mVfD
	 S+8y0J097Qe8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9712FCFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176446877358.23361.13071789422985436285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47dd11ba0848beb5b0e9311db5b0b19b49e278bb72dbef968c84daf943507e4a
Date: Sun, 30 Nov 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764468773
