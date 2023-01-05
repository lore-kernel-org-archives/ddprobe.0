Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E47E1EC5
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97AC4C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672912887;
	bh=Rryl+AWYFVu1BiB450bVxUxEaAirVVCazVKT7duLaUA=;
	h=To:Subject:From:Date:From;
	b=Tau5J2+xkHdwGZKWO55EeIX9rBS/aEKYvx7KSUZ7So4OSX/cV24k8n8LClPyLq0qC
	 rJw0dDlfTBGepIVz72ICoNx0MyQ/3+MFauN6cm4nux/TGE35rd/Kv7SY+ND24GAcQq
	 OOdU4dC6V4qs6llNPZ1Dqz8xlhMhtwSHOnQEEI7odIu3MW7oztohkv8fAk3ilNDaqk
	 euJSlGrgREeoGjFZTgKmLTzKHMPqi4gLqtT56xOfU/o5nHcSdUqdxD/lSGJCgPsQqf
	 4xRG/1B8hJ1M1UZumTHHoDJ+NX7XVnNN/A7Wlwn2su8f6Cxyk/rAKr4S4G4Ox+QMTC
	 zGx9IZql3lmew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E1BBC3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167291288744.28577.15653988137018533402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e9d331bd1822335757489254987c0eabd11a6bf8dd71f554f0ea89fa88924e2
Date: Thu, 05 Jan 2023 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672912887
