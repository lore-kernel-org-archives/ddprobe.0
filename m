Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A8D40DB23
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784797174; cv=none; b=tuP89tYjNqRNlJ1iU3OHnGRkEu51ydQ1+N5h5AvzbynI3Hp3mawl6N55IC6FEYWIRJhpeb8/2jXySMYIjRJoOBntTzEeOny6jq2JrWmqhLnOq4F+a4c2qTjZVHzm7R488x34rIOU2TKJJ+8oMu6fCbAHkZvfaVR5u1yi4VymvO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784797174; c=relaxed/simple;
	bh=orlJzUHDHKh+/l7kOoe8nZBlLdK+s4XuJ6goEVggrms=;
	h=To:Subject:From:Message-Id:Date; b=gtzQvwwqGls0Jq//1ek8Nl8xrEVANNEPLxXXVVkI51OAx0IhpbKGBhHza1B+nm220uEp6qBZTK/HMEpSOYNW7zK6td0Bp4QQMoDlbGpXLhHgvqYgqKCh0C9ky6SPymQKuGy8D36uaPsc6Z6M0e51y3crVIXZGVZj8exuggqNqxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1jNJN2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1jNJN2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2E34C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784797173;
	bh=orlJzUHDHKh+/l7kOoe8nZBlLdK+s4XuJ6goEVggrms=;
	h=To:Subject:From:Date:From;
	b=q1jNJN2lZlf1L+GUOtg9yQVauvTtDsvE+wJ8eaMwMrLWDKeolb6To8hkTb8rYzSRD
	 JToskT+EcMeiwHUbsfb4xlbSb2ZhhB1OnoiPNRoSLuUs91RFUZIzmtzNOycJryPcbr
	 YEGsK/owFr0hzp0P1c0pBxL3BS2Y7XIPBQ6mZBZKphPARuHDMryG844lgBG5NjtgO3
	 PccK4tmnO0hbMXQbArdTAKrqZSbL5PFXX+xrB3LWF7o28Su3Ui4zxjvE4vpXQrkTGb
	 73Nm7Wx4aR0hwa02K5e5hBxAwNsWSrt7/KMb3+5fh0896yzTVnQX7/MqURA6Uki5P3
	 ThAbzUbpxaRbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48A6C531C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178479717372.23453.7620324524612750815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09035229ae9661ab624477a930fa419cfb66faa6ba22e33d29f34f74cc808f86
Date: Thu, 23 Jul 2026 08:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784797173
