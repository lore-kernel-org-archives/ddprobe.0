Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 848A27A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 23:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647126084;
	h=To:Subject:From:Message-Id:Date;
	bh=0itwON2NxmB1wikHXM/35MDLTWHuTeTray8m9m4puP0=;
	b=EWloEabB8K8Nj3m0to8d0py3bu/X8v6ubLsj7EKv/tEh2T7cO23GOTwNIQd73oFG
	HsO3a416tKbJUnaEoLQV76IpZD7bFvbWRwotyetEL3sX/AFWVlZJnOVtAuWoM1U1eEy
	Dt4J0xO3bi3yZ+sChF7Hi/+N7AA65AdpERQAjP4E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647126084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0itwON2NxmB1wikHXM/35MDLTWHuTeTray8m9m4puP0=;
	b=JxKC15XwDZmTbiGQOV6Sg6Tg1hd2ykEswp6HwQvP9/ZHWTpD+VBYaYvMqpBnvPUx
	IWBg1RDEBVVZg+XPr9un2MnRCE0cSJue+itWsXNfbV79fvcSKkR0L5yqc0Nl6LspGFX
	HPhFe+nVE/7FgRQwxKg4hdZHBrG4/KuhKVt/Cw3c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f805d7cae-be9ef60d-1209-48aa-9b69-68d9234cd110-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ff202d566c45d09c601dcc490965a228619994c887eedd761551b121a51ee7e
Date: Sat, 12 Mar 2022 23:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647126084
