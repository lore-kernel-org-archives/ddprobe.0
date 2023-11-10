Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FCA18021
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLROMNJe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DCE3C433C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699634896;
	bh=LXGzuobHU3kAwGnqBVqNirnnZGXCl70VS+vmnYUSBUo=;
	h=To:Subject:From:Date:From;
	b=GLROMNJeUfCxtBjPoXnngT0kBiQfyc6kr0DzvOoYq++28IzvZRDVcJXXyY7U4ngaB
	 A4XhSJo5GI7/0n4s2hr2HFamxmymEC2zVRY4FdKs7mbWhHUdAJnIwAosL24450EHk+
	 g2bQNuI/ibIuLxn127KTweIKKMqLXDVCLn2e8kKT4yAO0OohD4tflL3nHpoKLflnbl
	 gHk6gD0AW/jhig+t/vOEVLQFoANiq9gWnVOAVGcUtjDXK+3GdbQXuBUBUmCRiCLFUg
	 ZIASnniYXMI7IPcIIoY22WnK6IZQ00b7wLjiLrmyWjrzvNt6SRBHZVWpYxDLZWOERG
	 USsTy7fuyIHXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A0BC4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169963489638.23308.11962674190964662172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e12ab573a24b17fd4f17c1049dd04129f5c8b4ba963567a337ca23c1b7f175
Date: Fri, 10 Nov 2023 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699634896
