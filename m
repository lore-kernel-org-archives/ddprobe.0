Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3343A1E8B
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767414834; cv=none; b=OVtpnn8taWLR3aPI0MkQBoLxPDMVKs6M5ZFvqeIyzHAV2dxym0DQM9aOIOXrpykudtXxzVHKHqm6ijYFbR7+62LepTsX7ilRSB8Caz7I+Z5pUeoF2CdDEwFyLADPeh70Cd28GMP0BeKrekvwekiqoXtsll301DdKew8sXjWmooE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767414834; c=relaxed/simple;
	bh=iESxZ0iVwMyFkcqx3f8PfY6jdebp098Jx9m8WGD9fI4=;
	h=To:Subject:From:Message-Id:Date; b=gUefbbn5LzOYj4Rms5jBmX6sv7bOQx3xh/ycILoUPkFVfzYVOhDkDW7imCj3rfdckZXYwKd3yxxTLJOA+oCBUvRrUFavPhU3y8iahNDO/1oRBtPNumljCVWP1n54M3bqMWCCdYoLZUnGpv5sdPUK6d9bcnJxeAckSf2NCRL8so4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVHxQqd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVHxQqd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7600C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767414833;
	bh=iESxZ0iVwMyFkcqx3f8PfY6jdebp098Jx9m8WGD9fI4=;
	h=To:Subject:From:Date:From;
	b=qVHxQqd5uFbwwDGg+KmCnW7/9p/Rns67Q0gNVBqbXvmZw0ACZxyAjbKDkTGrzKqbs
	 YKPEYm52jKkuW6VEhz2zkQMNXcS+VlD86iUKg/nBQFKOH+0GnNtFU9FyGvsYQATYF/
	 3ZTIfdHf34efH7fuqB+rXjfDov+MMTwc+ekg+FIffiHex5k5hM7RUHw63l5qdpFG7J
	 kIgNW60njm6klZZH2VwLfU5wzbTGqEsO4S9moqYHJMTOVqkOdLDr2lKQAw0dj6FjzJ
	 evHYwlv+WQN2YDFCdhHCOEzS2DRAI0i4EG4Ctr0kG5MpWMSFgHC0kFCtsLixSc5pI8
	 7BZsjJeFlCvIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ADBFA3725
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176741483358.4466.7348586775866678056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f6de39cd7b8683ee6ed8715c235407bc0d4891e2ce534354f9deb7fc974f86
Date: Sat, 03 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767414833
