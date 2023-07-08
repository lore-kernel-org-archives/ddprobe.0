Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B5A2F44
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 09:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3374C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 09:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688808428;
	bh=9HSmWB7E6cVM5xdhcrFPf8DHShMN1pUWT7/5eEDZCVQ=;
	h=To:Subject:From:Date:From;
	b=RZ6vyZquQjTDWvz5OKG71fALlZzrtJAkPHN/X2weBHxxD5iT4uW5wtZyD3JOdMoNW
	 yWsK3JlD/oU5ybnN4l6ixVk1IumJNrCJRs69P1vEmxcgSzorBKJNwVz1qAxsmV9Kq7
	 1qJ7u5ZpKEpxD/5kexqicNuzH3hYo1He71uiRJDt3wxPk65gyBsyPMJlc3RyWLXRsj
	 GVV/IbtPBh3elxfhfbrjIMNdX2KAsJGP9a6sbgDDaNzxnaUNzKg0wFy1DJ63gz2FGY
	 OsATaDWXFnPlElv0NnyQlKD2+UpfdSFBZTPHm4PLJk7rEsh9aNlWD8mBjmxVDExG/e
	 kurotejLyiHsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5CC3EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 09:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168880842880.4495.13192055733748749193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1035a8b22b5d32d8599b9026a9ea855979ba8561b09977e40744918f96f2421
Date: Sat, 08 Jul 2023 09:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688808428
