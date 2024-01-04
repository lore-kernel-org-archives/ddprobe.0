Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125A82C6A8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqDosVag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C207C433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704401896;
	bh=roAeCsrTQhFHArVvVFbt3eBme/3KOKMQNLVKMkm/5o4=;
	h=To:Subject:From:Date:From;
	b=KqDosVagdepGAaz6XuS4EQ27KgAF9iMg+tjDMmkxcL3ei+0uWqTUeLNo+6eu7tepk
	 MOkOYl/+PFM4jDKle5568OejdcwN1sJvl/6a8bH17sADNUSN1bc8ThpHKEQC7icQ2f
	 DMndC2TQGePG/Kg7/Dfp3SItPQJ7W2oX/QFJk30TAtGgbaaQI6wLdWsw6so86QDsml
	 VoOccLm/cEBque+zuDyukLcjpBbB6YLmzJseAWt1bTURya10LhgIZbeiT4mLNEqhtQ
	 Tfsf+IqwwsO5lJoHmHOu8q8dec5IbN4o1vXrGDCam7bcD/z2KWo4wVO8WmMd01f0uD
	 XfcQPLZvyx9ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77163C47073
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170440189647.3468.6451880311931381751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e5fa8922896087f46e3802724760f71572d031977e83cb25e375517c04f371
Date: Thu, 04 Jan 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704401896
