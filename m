Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316C229E101
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764908574; cv=none; b=gszcpQAAMW0F8hEjmDu47VN1nSVKnfoTyJRDj19wsQOAoTZPKf+NGvf8w8bFvaC+4P262ce4W5IQSMpOy5CxBw741M4md7nAbpGWSQnWn6RMLnOUa3ojSTPrPgm1B6vw7htjgt6loN68AotwbnIcyh9fvbVB4eiEOv+6XUWDuv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764908574; c=relaxed/simple;
	bh=5G4gR+llhU4nhrKLsxgTASDExjHJQfULhqDJM/goUAE=;
	h=To:Subject:From:Message-Id:Date; b=DNKEBkm2D8+INR81ALUIx6NU9QvYSQlNCpF48iWgkrM8qz3UgIccyXxwwb0COEHnUsviWb11/t5cCr4OzgD28oM2VVgmDmcgps6I5xWo3k68MmJomuSHgZDG8Gt8twUvXOFBjsA24sD/EERHDRn75uFOrLKQVupx5gPglEAZMPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8AxqGA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8AxqGA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF15C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764908573;
	bh=5G4gR+llhU4nhrKLsxgTASDExjHJQfULhqDJM/goUAE=;
	h=To:Subject:From:Date:From;
	b=V8AxqGA0rOvoO7cTfeVD0gC2ApMi2lbGrlpSL/ZJi+TYg966cQbQdAg2rIeYYZsuN
	 5+wx/FHYkf4zXQrMM7YNYPyHjDme8bH/DPuRBo9G5a2Qa8A/W5yEfJNtl3VwJdWSbk
	 EdcfBg/DewyCP+FXNonSwgrEQSThHcZol0hvUjkBKiM+kSAhr1dseqB8/V7fTOVz6d
	 DZEwQV4WbSAD2A3ZL93UAN2gy6qw0UyNlDhxJvk7L5Ci3D4lSFr9IqYMK5sb18m9+1
	 yqRZi6IqJBOQZViO/V/qFgnTtOi0/IxnolYgMa5nRyWkRVHMkjVUJNmB8X9p5aKudb
	 2kUCTn1RobdVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98841D2E000
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176490857361.25580.5774625028302157628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d64188659eca5fee5460b588b6ffb51b234846c090bb6741368fed119ee8bb3
Date: Fri, 05 Dec 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764908573
