Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC86224D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7Uyfswl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 881D9C433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699960696;
	bh=NK9QysJNP5rP+LljBSpZ8fVZUwE+eZNM1/bdR8e7U5A=;
	h=To:Subject:From:Date:From;
	b=C7UyfswlZVs2IV6QZuojNRwJpymzWbvbK/+NeguRYMzHwkZNWQdFW/RkkIKTz+ITh
	 U9NHaU41UC+jhcfAFQLBPdZ1eDzNp9MasXKy19xTT8COLCv8M7jInwkltpW3Zmn2C1
	 VLyTVwUmcBExn6LfXDytBQC3gRZb5McqkFbTuwmX950SYpI++NxcpeW8yri3YJa18X
	 uNOR6SN87ymDPylqt4d6PbOYavYyW2p99ILidVTwpjBfhNno+bVOcKrGrNzxIxjCrp
	 ElnRPE9NqRjd3YBZGJ8mVLlqeqFwKGvAe4fGre/TGpooeRj2QqPnx9qJnnSuSALri7
	 iqASObPwKxz5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D3B8C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169996069643.10189.12452904258044404399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1cbd5f8c10bb7b98d23f30424e07dadc3633a592b15f075bed3523ba3bce9e3
Date: Tue, 14 Nov 2023 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699960696
