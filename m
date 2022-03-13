Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68853627
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 06:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647154284;
	h=To:Subject:From:Message-Id:Date;
	bh=oyZbeEh7yVH/Wgj/zqJJUOnV/7b2gpznCv8Mt6D7R/c=;
	b=QzwmRcy/SiKU8qRBRWdlXwG9E1CwXueJIxX/ObjJ+PwMCXvXBczCn7ty5C1rXAMf
	1GlxVMBzEGBmDx2heeaj0KO9K8e/0xb8FydTIDdZzpjydci8qDvOxGeNuEFZpHZUh4d
	ByKFUN6iW3HVX1Y5G5+cI0WCy+serUJHlBmT92IY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647154284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oyZbeEh7yVH/Wgj/zqJJUOnV/7b2gpznCv8Mt6D7R/c=;
	b=IhIE7ye+KdsBrJwGZcAT0BbxH+ap4I926P9grybfA3pSfC9aQJQ5VA9jHgEPv6Vm
	ELyZzMrhkS/mKS5D0Rn5ARML/4eS5Pxo4sUlmjBuV2xmoOD2bgIX56ve6jTLRhJHS/V
	qz6NQ89oM5mYdzx9lsGVr61ndJwzyTxYoFxw10FY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f820bc8e6-4e6b5fdb-c6ab-430a-ad12-512cd2212396-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b604d70678b6c75d7cfe16c89e2e6efc8aae22b745f4336e62ef5f797c4073e
Date: Sun, 13 Mar 2022 06:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647154284
