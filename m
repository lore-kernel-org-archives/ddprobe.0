Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD55436EAB3
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773740093; cv=none; b=PerBBekuAWlhkWgmuo0Gsn1UMdiORurAgzlQyqera99OKzlp9nuHDH3cfrxmS5v5y5PMb1qvEqaDIqPBlpew45dTEgzX1GYXASrVGQLeTxYMGlMIp0HBKDCtKgCDvx+rUYu4ZCp/jO+fZuLDBcn5KQX/Q6leOJd4jJq9QPoxsIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773740093; c=relaxed/simple;
	bh=NWjL2a/4xlj4FZFfXT3gPrpZqAgVc5LgXLfozzvRbgY=;
	h=To:Subject:From:Message-Id:Date; b=tkVTfOrxuavbbRk1rB/b/JrFgTKAMwt5EYwCkoPB6nlfHtO9hUT6uWq5xIRwBeMQ11DjfgU8hFpRfTi4TSqE7ZGWVEBouIV7XHspvcidl0lYW3dohu7syYJnoaE9/cvoNVs5Qu+JdRUX6qrBvPz8ZfAc4AMBGZvNgD1+PupQXgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Unvc0s4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Unvc0s4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAB5C19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773740093;
	bh=NWjL2a/4xlj4FZFfXT3gPrpZqAgVc5LgXLfozzvRbgY=;
	h=To:Subject:From:Date:From;
	b=Unvc0s4pWTGIkJcZ8Bu5XtNyx4X5eUKQ8EANXVl5KhdozzPIqotzt+Xl7thKmu8ZT
	 rsObXSTQXD+nAbw8CamUlHvGZwlVcEHlGIJhQVIK+8eOKK956qF8uk0Io6LzUhqY/v
	 4kEhQKh1fPZh2Rs9NyaXIItQde7W+7RR3GL0BRfw6LvjYfgnfp7+nZPGKTvmx1aWvB
	 cU18MHcLCV+LJnLkqSxTNnbONcM+BF04sTYosmFq0KHUBw0ygI/hiZolanxQ6g2pG3
	 +BS2CBSDTnK8jTK+rWjmcPsk6q+4DwJR+hRU89o8326Qs26FKtPUJQQ4ssA6SOhNNP
	 HGGzDzMVUg3bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFA6F33829
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177374009357.7918.4384046537531076186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c883a64854a8374cd5f577ef03b289308e047634078770fa7d4dc4b8a63d7bb7
Date: Tue, 17 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773740093
