Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD89C10E6
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 824C2C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671498687;
	bh=mkoMhHvinvq7mMXCj/7o4/k33408z+wRMXveXwlWbds=;
	h=To:Subject:From:Date:From;
	b=IMlMmjhYwxjV6oKkD7iUeCTgbPMlZjfRWFf4EkFF3XOBO2KL+KCCeiVGRS1P77Txg
	 mcO8DEUZuJnUchxQjgg8KdM0AW3fGjTwhGxn3hgs5c9IS5OO19FQAFGU6muYtKv+nu
	 AF+HFKkxbb6PGW4uzskNQLneAAQofDbGu8p9lPsfCanzrPpR596eDpgJqJJTnGOsUX
	 Upld5BaYsXBjlpjC6nWyfizPMkocIAfXuOEk3rXIl0DPiX31qrScs2iBU93mM2mskM
	 wed/L0rOXoXZfLN5xEPAo0PofI9DMYXERgUTqb9ESOpNhz2TQn7HKK7TH/kF21qam8
	 mm/xVGYpcZ3Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67606C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167149868741.7131.14062539604183314817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff2c5c57c58bdd7771ff89ceccc2b369e3226e518fc35691af2ebb33513659a
Date: Tue, 20 Dec 2022 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671498687
