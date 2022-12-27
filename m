Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D889F882C
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 13:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 858DAC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672149087;
	bh=22tvp0A5+1iKfR3QLJL3Nc8dWmG8dhhw6JOVfZOiQ7k=;
	h=To:Subject:From:Date:From;
	b=G88xzLx2Y/0jS4Djf/pvjpvit8D0HjNKlRRP5vqa42y1bWBincETNsYhokkZiBrif
	 8QEfI/UIPRVF97phcc5KB+YeiAYWFrESs1VZxpaDnPChCRW75ZSlzYbGOZQJfabOjJ
	 1JNsbT+7CktHxPeL+95Febfb9o7NmqDMpEQNc+vmrSxig3v5iy/fdSnvM0t+2eEf3A
	 o+hSjs7QrHqy/+Q9hfu066mobIsjCrWleEp0CsRhKOOlQN1yUdBborwp7Fv08YMFjn
	 kwFRqVOjrrJzPJ1CuYvS2dzK6NUOLBOJnjOul2XURQ40bovSYbiR/Qc5avQgGve+zh
	 /wEqW5CMoak7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EE15C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 13:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167214908743.24727.14050955493855401196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01efdbc2f301e58c64a3865791920ffe4774c63e6d71db1d3fc904ec2fd8b1fa
Date: Tue, 27 Dec 2022 13:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672149087
