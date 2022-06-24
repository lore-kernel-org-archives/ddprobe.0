Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CF17C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 01:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656034012;
	h=To:Subject:From:Message-Id:Date;
	bh=PfeafQ6eoMY6ZsgM/CFg80s55hHq+kSiQFdh5Ft3q/M=;
	b=Ss2A1xPEopBLqAfiHWy6gJeiXu34xBgeaxJgsjSTjhRpHJyvrfV+45G4J3VKobIE
	PQss1G+7C3YlK/DuCZp0r3GfaAa1jxNKk78+0EE2l5vXa1ePOsQFNQaB6bzDjNE6CMd
	/kVKwlMx3vnUJzoblDoAaHt13sGDLj1YJvrBfgMg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656034012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PfeafQ6eoMY6ZsgM/CFg80s55hHq+kSiQFdh5Ft3q/M=;
	b=KpRmnBXzOIa5Ydarjq6ohvcVRUKkaMF7I8agAU+gnwD3EB/44U2Zg3wXDNVxeiz/
	RDBS3jmqNxRltr8XSVxzqLT/hHio3YpQvb3Nz44OoWTTRdftyme29DIGsgke2S1bSrK
	9aWQlePqAaJdPOp8YXkNLKKO9s/d4rH/ZWYoXXlM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819351ac7f-266efe6d-14fd-4838-aedf-a2fd06043691-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 638a9541fab0702da7d1266fe4343153713fe5594033a7f71f727180cfe34f33
Date: Fri, 24 Jun 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656034012
