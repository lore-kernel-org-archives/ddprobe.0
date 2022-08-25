Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97B11C30
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 06:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74BD8C433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 06:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661409652;
	bh=foB+mMwNfdAPSsvi/XbAfhMAxu9wS8DM7zW8iJkI04E=;
	h=To:Subject:From:Date:From;
	b=pucvCIpu8UeDRFxlAfevVBonEF68VeipE6EPEh6BwmLSw9rRpAtIZe976aJPnnGa4
	 M1HBLVswHjN1MW9WunqJ1nPahFNwDPAXgItMH+5ZeJOpEwDtctcrZZj13CdC8C/ob9
	 YF3Wm+s/aV1SsMGndtPmg255FMOPAtjFBVzA5AkF1cXvIUOXclKqK5inAT8W5ySOgF
	 vGYl6I5/Vr6jbKEnKVJMrCRJxHFl5UiE6fCuDN2GLwoXHl9uA07WHgi/QkiGj6Q48E
	 evZvkbGTAnlU0LDyuY9LEhq7wK8jY/T3xxVfZw5PfQhhT2QSzS46RGr+foLFVi1J/8
	 2lP0skhuAavfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A03C28D13
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 06:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166140965235.29364.11154834844874261550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f433d63ee8a2c6d66f65e40d8761bb4d4b2c33b870cbe0edf3c608bb7b04b8
Date: Thu, 25 Aug 2022 06:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661409652
