Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EFE8180
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 11:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647690085;
	h=To:Subject:From:Message-Id:Date;
	bh=LDpEHyQnVkHwSeghqIPy4lUROa4FkpwwLmlhaDBPEvg=;
	b=BEOCtZlO8yWnY/fDNS2ADDGZBNkp4AwnDXDv/uros/fQ3BQAyUTXGKvkERjBi+th
	IVpnapCj5++XnGO5gV1bvUifKOHkMpSTS4yj4O8Q8vwntXWUuTCMvYICUgaB/64jV9X
	jUYiMBwn+WqIAtQgJOP7MYbDe3MULRhumtYSlgqY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647690085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LDpEHyQnVkHwSeghqIPy4lUROa4FkpwwLmlhaDBPEvg=;
	b=D/vjaezn7C158BHlxAGYMYn3Mqpw4T/SfeyVPOapGIDbT6HbORa31YjqN+YYytEt
	0KTT1RuI3IJT1Y22LBE/Zv31tLBwBXllaxQYsrckNfcmcjp6/GsOtH1LczaFyjB+/Et
	3XLg5kew+7XQaGo2WHlcua3FAfq7XI25enk0l8BI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1fb717c-826f5dee-8c03-4b0d-bfa4-d4f117244406-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93a6bf21eac8baf2b22ad731573c28d53247f01aad5d44df0686f6f6cb37ebea
Date: Sat, 19 Mar 2022 11:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647690084
