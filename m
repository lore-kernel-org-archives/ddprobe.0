Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48D24427
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7629FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666483253;
	bh=HqlvG9fs0AWCSVoTE+ruBhWnS9whmPKN0UHL5IPs/Dg=;
	h=To:Subject:From:Date:From;
	b=VG2NwsI4mUTBxiBBtHHkGllL7IPZWfhMugJCbbPplwsmsbxGhEF8ITUCVSn2261ed
	 ndBnaXSBpuTlEKlFdwoOBzExvglfLC1ntBP16UuswHme6gUpklOVpP7Da2FqcFK5qq
	 oB6cquRL29RYLt9x5tdbxCKikR202XF3Pueai5WXmlRFtqTnt+RHei5r5kJyb2y8ox
	 yjyOnPZLc3GvYiUZJs5nYlizxe47fN9cM5Bb2JAf3uKkB2m+8w/OznGX9cMcr0impJ
	 W5x+EUg6nCP/BsF14SfLgOSZU4KsECNStCQOKKBcmXen9+qf8VS+wJLx6pDUhrKjb4
	 VczUZ9ctfdCDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59259C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166648325333.8194.4077730998246380262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ce7825a18b724fa0fe05d27f33ba0f7b68a4a85ca050f992ab1c9848f97d6f
Date: Sun, 23 Oct 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666483253
