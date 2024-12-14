Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD4917BD6
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734219954; cv=none; b=GKjhmZ/imN8JxGAFjgbRGBSmOhqqaD0+LiEW90hFVdScmvGUlY/C/nT+dhnNRUw5XnZK5bOKKX1xlFYuch/AaqEBEHX8bCAPSU27vDGjwDDUJ3xSrxixlX0s5a3uhF2rCTXPE5FzMoGcgQzmgJjyUPHFD7IMkwqlaLqpXLHIyz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734219954; c=relaxed/simple;
	bh=g28L/La8hnZu+gAraxpZAHsREGDUI5jdoTPcfsnTYW8=;
	h=To:Subject:From:Message-Id:Date; b=AaHZVC60cui0i139KIi5WvVFnjUYeo/Jb5+QiyAjixBnBszgVGxxGM+9/KI54/r99qBMHFHslN4YfSww+DIivn+olv9OR8Xyi4mq7hjCQBGVQvqPVBr3WMF8rPSFkHZ5WazGDL1UQmfSvSPfYyT58f1SBeBKfrdsP4lwLvpfXLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTB9q2Gh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTB9q2Gh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92C2C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734219953;
	bh=g28L/La8hnZu+gAraxpZAHsREGDUI5jdoTPcfsnTYW8=;
	h=To:Subject:From:Date:From;
	b=KTB9q2Gh3bkH3XroTBeW8qdDuwIQXdWDgn8RIXRljOUdh7J+cZ18c/yDdq14AbWon
	 7M2MjUGUm8idXGYiKOHfrGAxFPN8FIlXE8YVUhcyFmO8Wl07p/5/FLZvsmOCJEd3sa
	 WsWokpt9Iox4o9TznU+vNT7K8DJEckgWvUVS4ALVSKoaw84caU0NuZfbqJUsGLr4U4
	 XGyzYyeyDKqTVII6tAe0DuYkOjIhLkJLSx5DLCyCC9WTr703AHtLIDfXo4nCvenMQs
	 1rqQkWv61E+fnOXNAg3deUbCkY0cQD1JmE6cvBwvekHelKeUSWtHHqs7EhehSbglL4
	 yY/u7NX90LMiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A4EE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173421995358.22232.1236752436786761487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e506b8c3bf6ef3d0b093237308529668200401b77d8a42dc49cb5ee478fbfdb
Date: Sat, 14 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734219953
