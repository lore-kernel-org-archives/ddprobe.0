Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA817ED
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 812F9C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672111287;
	bh=CfJE83IgHXe1NbDlZhqgSEmcd8A9owagWV7OYn4RpWQ=;
	h=To:Subject:From:Date:From;
	b=UaPzYROOXvFgoqhKkIpaGdEvQjfuSVnhuoaMC7A/bGg0pR/LOLkQBl+KPRS2CQ3SR
	 z7ODFfktceusNzMf4U4MT45hov5E3TsyroVIqMUsjydcmp7QJ6PY+dkQUGk03AyQpF
	 uoEn1I2p4bA5nCLC8va62AJv5tJKFp7k0zCkI1mrf3ZyhC9/PsHAkStygrHMJekd3A
	 WxuqSuYwXvsIpEQh6Kxa7Zfz03+jaTmQIdWRMTacNbpwIyoRvOLKCpCn6MXacW0IMZ
	 NC/yME+p/tspLkV1gBIPTVtE/hhG3+5mX5eY5QjjAFNKlnXzlqwb2pj335QpqMDtEG
	 GLiEvSCzjTBIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64AB7C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167211128740.24725.1598667258435156892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31792344488116e1f9fd5d40050a500caf21a9dae595c170e6b0c1f96b5da674
Date: Tue, 27 Dec 2022 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672111287
