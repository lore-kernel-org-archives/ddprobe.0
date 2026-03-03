Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1715374E74
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772498094; cv=none; b=NFQtrxADa22xL5ET/8WVwmqPui6TFtw6GztEwu5Gsim5JUx8DZztA9ffd6iwo7g7BrcTbhCmZaQHi0kT1EWILPJEU5upKyANYMh+6PAg+2E0gBE5crL1jqWgPBoWxJaOwzctb3yd6DIMHKTe7VZuozeRUby2Cd8ZZTY/E0B/fns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772498094; c=relaxed/simple;
	bh=tCyRVf855PSTq90GpSJqswzyFjSsso2o3QZ0pjfP8uk=;
	h=To:Subject:From:Message-Id:Date; b=s796jwjJHb2j3VvST6+Bbi7b3ONnX0fgnJrlsSu/SbS88LgAChaSVh1s+6BZzJbIQZMKrPcr+ogxfzN3iiBF7wIgeuKCBTyu0gI061BXcBnDvKpwIw4Nqpx8kktLe/E3PpnZ+UJFlF4uQPpaDGvHvsDl9jv5fywKa8fyJLHkDjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RD0vxq7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RD0vxq7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCE3C19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772498093;
	bh=tCyRVf855PSTq90GpSJqswzyFjSsso2o3QZ0pjfP8uk=;
	h=To:Subject:From:Date:From;
	b=RD0vxq7KP5sfpNmwRX6YfHIUj+TqBo70Rlmfufz7xkZp+xjTWOa1X+pflfjOkCVCG
	 sqez2Wt1yBD+G+ZHbH9IFI+A82cYsiQkUKJeyPwz+n0obevb1F8xrEK62+jYmGQyKD
	 UgmP5PboaeyZS2Dfng/jE5htOUfTJ3v71dkw01kBFp5Y+uDNuBch8GNQ/3UhVIP8X8
	 2dePvwwppIsH1yExnp9wbb1JJKAVZg3sQn3Yt1J8CiHz9qVWBUyKOMwepqqFGWZG1I
	 ekcBnUXruxvcqFkh7Agbf0yJkCRD1En9VX2VllpOMlMutVhUsArAqMIqnlnlJ5LiSV
	 qDK16h0rJxd3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F14EB3641
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177249809362.14708.5947656283339195656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f66e4ea5750789aa46a6072dc80f3d32e424ac065bd406c84a549786928d5fd8
Date: Tue, 03 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772498093
