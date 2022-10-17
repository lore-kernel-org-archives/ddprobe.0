Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C0910F7
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 706EEC433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665997853;
	bh=kUkUTHXgQoCmlvmqqGk+5qPNN6Zt25nCoJkjWFBiA40=;
	h=To:Subject:From:Date:From;
	b=tLxfs4p/tz/JIcNA59zMyM3Uq0DJabwBp8vYRiSyr9YDzN1caEf4lsM7S/9zdUAd9
	 BIkxRWyOemDC89L8YaB0DqzSmSo6I+He3uQELirWaJLx9/YkjB8te1IYnHF5ChvBhW
	 aREjueEk1Wd5yvDX9IMjMpmS9Sy9wcPFvoUKGKd7ECycge4uFmct2rBzkBeB5E0Ol4
	 t75Bn3JQQxraVkhYLOSdsV8rrIq3krEo7SEv2i3CFNqw42pDwgrpqiaK87QIK/sCRX
	 gcuHj2XmsXI2X0wOLK6vxNdCf33PCMZUtoI/1v4ILYYvGxPuCKz7xmOLife9FKm9i9
	 OV06/wpa2fkbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5602FC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166599785334.23312.14124818162002599855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f083dcdf1d84e124601786b4d4060ea8bc30abf0b901820711bde73d7f7fc7c
Date: Mon, 17 Oct 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665997853
