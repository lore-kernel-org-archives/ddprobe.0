Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B921E20EC
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 662B3C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670304054;
	bh=q3CD4GUVq1wRaIjNoDRXR7/1Lr5w8eVqTaMX1oyxTzk=;
	h=To:Subject:From:Date:From;
	b=m2veFqddUeRIKNqCEY0V3D5gURh7155ndKhwi2aTqYfLAGsLUHTXenjIB125FH2oM
	 ReYmFR284RtjnCExmGH8n5OZPWUCK+C0Kk8IwdhICVv+Um6w9RJsC6IZH6+Kdx6lZO
	 dqo5IDNHVkpY3AtSnayRYmwpgUif+F+s/t4SOte+Y131GJtjBvN4Ace2cRwFRpy3TD
	 6gHk4JtOBOiBpttR73AbP+3qfPGWnL1FifqOOMCewCGRhiUQ1fk5OyaVcU3F53I6yj
	 Yq9L7mcXpnQUn62iUXOUf7aGkdOShlmQUu+LT2kSfwB+tYYAQ8EwCTVb18u1/RrSyU
	 +a2ihYmsGcnVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C70C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167030405432.10640.15560130396553713314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beca41e78811466d1b86894a243fd105214edf6b97185b4aeb6c35a13d4c209c
Date: Tue, 06 Dec 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670304054
