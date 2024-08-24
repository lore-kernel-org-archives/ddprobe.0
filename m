Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF2415D1
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724520954; cv=none; b=U1z15tFZEqs9p1XdTOyVvwCyTGFtcmBPSxYpT0Iv+7G7ow/C7c7EBx8me5x3Dxu4eOZmrWAh4V8CTeG0KUwtdmIXutKhDWCDUY6Wcqx3k9pXG8mQZRTGvQCwZfHAdyil/IQK1vaOgkWooWfJc3habS6bbFfkhuhsgKCdyZkNvwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724520954; c=relaxed/simple;
	bh=MKl3SnVWCJ/MQGWQQLV0aWkmHSr7PtT8yMRZOb8ci0k=;
	h=To:Subject:From:Message-Id:Date; b=e7V1Mg1Moegsj8DM+mH56L9uSih0rLe7V/QaIzmTDnYrXyUdX2MrXH65i2qDmo+mzv0FBWmUG3E/A7wip7PwWusy+JUj2Mi2qulNqToD+odAzWf6XgxIEcAjkonBCnbdt8Cf7GBlI6CmKWSgFVW4AC/EdqGk6MhK2iTu3dsENw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYB3zeRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYB3zeRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF1BC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724520953;
	bh=MKl3SnVWCJ/MQGWQQLV0aWkmHSr7PtT8yMRZOb8ci0k=;
	h=To:Subject:From:Date:From;
	b=oYB3zeRhNwKrJHtfyr3Cwj5AnVHEhkfm5gJySUzH/LESJbRdqWtUn+bFq0p8lBYft
	 5jRl+rTLGZy/FI5sFy+zBeaEk24mYj3IeD9fNXy1w5rr+EnOwL6sN2A30LQCdOt6r5
	 W8QmxI7ToWxu9Rj/07+K3R+EKfwTysPfLM1wesaMFb+AGGa//SF9BQggphxBxlQOlS
	 z9pXqcGh/O1wJmHzh966heXsrP13GGeun1GNH3jHOd4raaiKyhCTRlhWC3rkWu+imh
	 cHs4AFNYEqkXppX2pqvxOqHzoq3GU9E4/2kJD4TRP7TO1Ki0nFTrpus6iuzL79KKxE
	 baiB8o5E4h8mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9871CC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172452095361.5617.14724016808091821878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f514cfa7cb0210c2aa67c84f0ada95267006f1f32925ca081106633ee2fd12
Date: Sat, 24 Aug 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724520953
