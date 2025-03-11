Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440B9F9CB
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 10:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741687734; cv=none; b=Q0t6fvTjnJz0B1isQI4fSUI+yzZBgVNg7AJbKqYXCZteTidW8nV1HTewob3mzO0yA+OWkQI+nWLwb8sJEyF1ySZ8DVS9D9Y9RVA/qn75cwREQUcEXr0g4t6CqcD/rOHqgz3/Nct2/zfQy5hfEGpejiIzPFSBqN9ArWmD+cLTYm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741687734; c=relaxed/simple;
	bh=NPLnLW83Dhk31APDDRWXnsWvASnGajVDIRlKMt6CTv0=;
	h=To:Subject:From:Message-Id:Date; b=IblPrzItOcrcSZ9KaExgsALF0xdSfK9Y3ASO9ITZRztbwZVBLS/yeUlZXYNiRXOe+nZJRIXAwmO+CfAD4Pzfn5kiWJNAJFdb/0lJS3gPmsQ5PcHSCU1vilFPvEO6M9wCrmmQ9oSMzNOKGrSsP1/MZbbWUMcdXnrXK7LkQAo4W2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKYHF5ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKYHF5ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D08C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 10:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741687733;
	bh=NPLnLW83Dhk31APDDRWXnsWvASnGajVDIRlKMt6CTv0=;
	h=To:Subject:From:Date:From;
	b=YKYHF5ik1y95hvxdZFWCGUqT1xIdFXKmpMRSwjUcbH66GZQnjch4QJS3KsL8KCS3m
	 G6+ite1Mr/xHzWmY2KAC3DGwqscS1rdWbA4iUln2ic/9CMxeAe6zYReaoqZXwldedL
	 wXaekhMXWQnm6SYHv5WqL9lqUDPRYXzDbB9DAWvK/k8AacQVorgmGZruq+T8RFpoGZ
	 SyEdXe1lo/eMQAYBh1ki+7BSz0eaDglPIolxGkZOlLdgx84lZ3jNvKGz0TrczSGvps
	 S017CfmynzP8+K6FjgpA53tOblcI7VSkTMEKxvk/JOUQPHiAVfEzusGr0QV/6wrcyL
	 eii45un2U3cuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3641C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 10:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174168773365.8053.343332350394365361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11fe73f499436bd2336e7087f90e4ef6065da244da156b99a108b78e33a9da83
Date: Tue, 11 Mar 2025 10:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741687733
