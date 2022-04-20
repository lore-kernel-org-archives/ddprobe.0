Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594B27A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 05:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650431938;
	h=To:Subject:From:Message-Id:Date;
	bh=TiTINYhwNA2KMmX1OsQlZOwspbrYClKewDRFN4p36Nk=;
	b=QR9ImL2FPjVyL9QIalB7kv4niE2U4EguLIPedtA+WfVMHamsvbiucrpfaX8KXw96
	V6A1haQvphFGiFBI0IDIbnFx0C0XuL6Bo8E6L2UR1CppB2sIwc0phumwEwiR/wTTppr
	KOcr+SBuaIWIr9eegc2wPyx8o+8hirP3LEqEpN5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650431938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TiTINYhwNA2KMmX1OsQlZOwspbrYClKewDRFN4p36Nk=;
	b=dj6YFVEjW5+0DjXllNYjW2lBpxEioQHpE2meIpthMj+0ll23NVbqOvOS9XgPwN1x
	YtLUV0P+fcJtOHwrIGxAl+oL96Bw77s1UHEXovlf816MerN4LxhGx/cdsHa9NhfxAwF
	AZ5tflgOiqKrRfi8yD90zrft2FACkTxaF5sbFhFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804568cec3-23c70761-15d1-41bc-bfc7-9f170a3a9cea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb6ca75e5dbbab531c30ca75d79928b256c0b213ce6aeb47bc79151b27b6f6e6
Date: Wed, 20 Apr 2022 05:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650431938
