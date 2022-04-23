Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085CA7C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 07:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650700018;
	h=To:Subject:From:Message-Id:Date;
	bh=9qzd1o8h6nIcQOFQy46Ux7PABARoDuVz0iZ+dII6Bm4=;
	b=KscPb80DXrCsJZ1ZcGf7svUM3JlSKxQNVhSzRSqtVgTOQQZ6DCNjfLtWydYptSdU
	1ymVF7tQCycbsF7mQeEin/b3pqE/o6sU3HQKocwG8m9cgPooybBK/oHItma5F4aFAjP
	gYSSybyW6u8+vl2SwoPuNL+xqTcko20cktYqP62c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650700018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9qzd1o8h6nIcQOFQy46Ux7PABARoDuVz0iZ+dII6Bm4=;
	b=K1rRxUMY37eBfnH8Qhza4zCgCQ5Pg5LarhWqizFadBs4Y/9O+v8NK2ndKElAiAoH
	L7jtp1ew/XZgEawyC4VArjICpi+6y10mkC6M6clCVhhelfyZFrf/z5UjqJwiLNxJCpK
	OkrX/K7Fouwg7DVUbxKmiSa1UJFutE2eYKLsglCw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018055636283-ed03e29c-dfed-4085-949f-7013d6698d79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a561953fca644e019d9f28c2fccad4edc4f0996eecd72f5617914e82f5711c0d
Date: Sat, 23 Apr 2022 07:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650700018
