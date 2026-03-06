Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A02311C01
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772814894; cv=none; b=OfqGMbw4KcvQ/Z74hsFJjfnOSUw7uJP4yV80GHORLQPNjOT8uHt2VgkVwHS0QV1whqdJ+15+nnsf22iWxdKKzU+yBq0BbZDzcsUdrT0i8B0yFG4iuDuw7gtX48D5eNlNDvgDlUP3RaJ+Tq8sfHPt5sS35vDiVRBxWz8lkZtUi9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772814894; c=relaxed/simple;
	bh=QOv7TXq5pXU9zyv5A5jI02mDixSGIM4YqfDktc+LnEc=;
	h=To:Subject:From:Message-Id:Date; b=piPFPTSuxSKcKfqL+uuRMWy8kiD2v+LMIGrSOgZema/WOXYA4nGK9EDHsoQS2qS2PipeanKAQRCHkKzEJvf9IjbAumQBbtfEHMgV2D0udDOe/knvJ0eauhFSGy/D+c3QfUSODCGHuv0he50Ov0ho6EuepXIcMEtiTBAHAKzM8Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a92qJ6fH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a92qJ6fH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2627C2BC87
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772814893;
	bh=QOv7TXq5pXU9zyv5A5jI02mDixSGIM4YqfDktc+LnEc=;
	h=To:Subject:From:Date:From;
	b=a92qJ6fHkFSfWc/eFBSrpRzlIRekWBQYjbjZ1r59ibB4W6GhFAEgG15tV9KsORGLo
	 YvlDpYgPonk2NQmS/e8iDSuc5wnz0ePqsg7b+avCf0e6cJ4q7h9a0j4G8ALDadUOUS
	 Sp0+tbiT5a/uC7NEUiMINlaH69oJw5DP7jT3qw+MqFq8zcgP3jJ+H4Kyq5bWFTWjkg
	 cySWE4BOyhz17WVHF1zJ4SxVExUXI49tUYGesGszq0tcaHno10OZh9MLDWTUlCZqDK
	 gsJcFJe6k0StrKaEqA6fd+xpBQCljfOt3t5iX21uttZBHuA5ToYOEpyB+P0GpjOCNE
	 5W9fJJ0HK5Owg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA2DFCB619
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177281489357.22959.9153400608298298093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fdd7d12b26af31354aa242ed58012e540e1079b1e155e760f3f3c057d2abfc6
Date: Fri, 06 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772814893
