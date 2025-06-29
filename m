Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE552F3E
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751212794; cv=none; b=NGxjsd4OyjHLuxoEWzZYEZUCbFrT4kvyu44svBuUfUnBsyHW+VZLfUCrFaWLTB7Jyam5o/KsNtSfb3uj/cIALpIPvURu8xKHmX9nPw9e9NJs74U38zUiIBI7ZjT18RgoXl/TwcD2TmLuAMbvbMXv7z5xbKU2QyUN0f519jUD/0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751212794; c=relaxed/simple;
	bh=IOJrfWIovU45GHPAXBAdQjbBqqgndaVdGLNUVO5LDjs=;
	h=To:Subject:From:Message-Id:Date; b=ViF+rYGVeShj7hnTk+h53TCcQnB2CdDvCifw54f5Z8pkxsjGZ69eQApmQa2S7B2maVSWdwXViCsJvAeil2tNVHMo5kzfX7aQlb5UQQ4TzmFyjgFBHFB0ydI8oIlJ61HoSxBdOeHvEzSYUWkqP+biIaphukJmWGV4udwbs6W5zG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oznre8T3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oznre8T3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1A8C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751212793;
	bh=IOJrfWIovU45GHPAXBAdQjbBqqgndaVdGLNUVO5LDjs=;
	h=To:Subject:From:Date:From;
	b=oznre8T3IK+J4yl8YSAnSb5pOE90F/EQEwG1SCNF+WmrACuzBBgg+4Nnqh9wS9SCa
	 rrVu5G8+wbPR9M7KXqxA/j6pcJzTUU1I/DEl1ttrDm9dIaWskP+5+Q5ZD4+BbXDyHQ
	 gKokTqnxaq3AeO8o3gy8GEzLh/MOGnQzVyIOQv8Gu6Wn/QCatEkVqgH2m8Bv7G36uc
	 gvWTCV0LqiUC56+bR5ywAzbmj5hDmRKq3bg/WVNXr8YTZi/kqPTYAEN++Ee6PslqU0
	 /POg35bibn08/KDyxriezP+j8/uTKvk1Nt3ctyh+rMHZc/0XesWVn9Hb2wa6zap+uJ
	 r0gTxuTLHqE+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3FAC7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175121279357.2751.5010278252819859316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0482dcf188f9574365beafc44da61865f9e05ebbc76655bb4a798448037c2ea
Date: Sun, 29 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751212793
