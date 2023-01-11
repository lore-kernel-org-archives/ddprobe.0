Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6CD61844
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96DEFC433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673431887;
	bh=Dc3lbPKl4x5KpLgwTLYkZvSTzNuuwX39S8BMtmoK5ck=;
	h=To:Subject:From:Date:From;
	b=g0F1ni8ITpfijPfypY7hm/1KypqxcZ+18tDymb2LrlqAAMNHWALNhhNIy3FH+sgj6
	 tZRV3lvCkuQx3V6AUdVmvxcNwfHSwDlIaqJHZR328gwYPNdE0JNzuVq2uut/U1dp/L
	 0v23/dxZfRUK/bFVvaxEY1fml//vBzyt993qeBGdqyZiY7vi+wDLVSeBJL/NlKc3pQ
	 49S044Aq5WQt2l/kmo0kc6I5u+E1w+5aA/tFC8LE2gAB2oPpgoJjHJtCWICIfQYG67
	 kFZ4CdCv2EvHde9Q6iuX1ehykOOqhjjWNb2cmFLDBwJ2NIUW49LFCAO6HjntREGBTk
	 TDvI6RW+OLy5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 770A1C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167343188747.24320.11260325084605099005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a1f4617583d2259aee0e902bc5643e4992f1b4bc03317dac1ccfbbdd1305f97
Date: Wed, 11 Jan 2023 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673431887
