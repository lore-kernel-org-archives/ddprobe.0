Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF3F7A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 01:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654825739;
	h=To:Subject:From:Message-Id:Date;
	bh=fu8Hg+eb1gkDOgy0YGoHAaUjBueUeKPTz+X+hu+7/Lw=;
	b=QeTbFdZ/CfVzqqXlA17CznfaYNqXH4rVyTIsb/9C4f01//2QsN0kdRAqnHhDMayV
	nnI4z4msNn+z4XygLkoSPOJQqFovcg7kam8zAthQTHxXCSSu7DqvktnPi2z40cqMTIV
	EyzmeLRorB1CRtPKVP8DBXvPqGfjuAFu4AC6rPsc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654825739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fu8Hg+eb1gkDOgy0YGoHAaUjBueUeKPTz+X+hu+7/Lw=;
	b=dyoId2lL2iqDmHK180HSvRPQo2iU0Ckm8R7kiMvn+Pc1O8Y/zamSyPeKWR9S1eCZ
	XagW3EnruXYa3vcbQoc4DB71w4SHKHPcJZRCBr4QJnArErkW6jZkzCmvPjAeK5g2rNw
	fZyrOnyahE4Eu3KfO0bsdl1tuDbxKdWZeyF62XZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814b4ce44d-7fc51f32-1fa3-44dd-925f-e09369d22e69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acd0842342ddbe53e99596b2041d6d9e8eeea92a032f16e324d02403195a8bc6
Date: Fri, 10 Jun 2022 01:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654825739
