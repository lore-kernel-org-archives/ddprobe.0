Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE16A17F1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74925C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669537254;
	bh=BblFzt1VaaNs1He3ppib+JEXrESi8AKcW8O6eph4Otk=;
	h=To:Subject:From:Date:From;
	b=SkmLXyCo/DKJ4YTpFUhns/nsK7dNmM6e4j9ik+Q41Wq7FTZNWga+jkDMkumNWA/7g
	 CHmV/vSqldnu/ItNWzQwSTZ4pkfCZkNFhdg7drhf3UZJOVbSCN9EvsiUMIarx5Juz9
	 IeJ8zvdXeFIIHAL/iqWSx0KBUbmi/wbvtf+yHeL2+FmYzCKNxwkb3un4SNBs5wVk8J
	 oyldHixRElF6h4+7ZQIMsT0wh8Fs+sMFhbj86RZawFN1vsuUkCI2DjPAfRMfLXD0Gd
	 o+cBMMW4YiL1VaKUXqrqEHIAV+AGCxCd4oOKx+8/0DPAS3JKARL4K5m3GjPrhLGVNS
	 wfQjUqZMo6N/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A37CC43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166953725433.9799.14139568503536316931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f1b367d5d483c7cfd852a6c568c8eae8ae140c62aef996b2710636d05e6cf7c
Date: Sun, 27 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669537254
