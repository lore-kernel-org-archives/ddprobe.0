Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C307489898
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786635034; cv=none; b=q7zbkn6VQqM0MIeXjryIWFS9NchVR+oi6wRQy5GOSJH9Ah7nXBwFPKzLVGXbEmU9NGsYXhuwGBAySUXPSJjKTucX2Tw8vtbZsHOwaIxLkKBbXTuvE9qkPAtepzoCDKfMMNKkPe2pfrxbVgGKG4Ip1kKRCegu9E/WWcd2SP8MuYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786635034; c=relaxed/simple;
	bh=zyxdEz5HaU/+q5cxa7WsSwumFbUiZoFga1DXaHSf5yg=;
	h=To:Subject:From:Message-Id:Date; b=XL3D8Lv0ZXA4COCLV9wolKLcvLpt7CQEkODAzG6DzSOPMwsF4D2H01hZzW6eMvIYhru3+ilD5sPbILJpbLO/7kftg4iiPiGvsqfpt77Ag1jOPii+lJU1HetHIm3uXOFCd5qF8QnelSpfRBvsqB/fb8A6BqcWLqtswVlHq1txCX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/6WLWP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/6WLWP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8810C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786635033;
	bh=zyxdEz5HaU/+q5cxa7WsSwumFbUiZoFga1DXaHSf5yg=;
	h=To:Subject:From:Date:From;
	b=M/6WLWP+aBmif6oqT/SqQs+MoRVtBby0gFYPXvBzsGw1qPHFxAyASBnnFh0Fpt3Wl
	 Q27oZ7D7TAtdMFafrZbbK39VulSKII0kfALWPM3oEDsAyyhk3oehRCTopHgOa5CznD
	 AySh/oRDSgTVSBjosn8fm/JTxsFRSeqaRFKV1hXTcRxalnczVC4hCCfINbBDg1/SVQ
	 4iimXBYm1wlv7tZzBmcKHwNYwWhCOCnVCe3n+khxk+zjxdDaPjfsPFTtq5s5UEilP6
	 KXoLz9b0q3MW3SDziTMluRwZKhv+MFxjXrPqqojW3KfzJHsoVY6C0WfwNNBtX1rStJ
	 VjofO4E9KZwvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D7BC5CFCF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178663503368.26747.17456516114943940117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 910f54f8bb75241f1b09754060ec13f57395c8511dc9eadebccfd1f910c1d2d9
Date: Thu, 13 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786635033
