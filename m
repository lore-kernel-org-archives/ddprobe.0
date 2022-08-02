Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C193C7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659457253;
	h=To:Subject:From:Message-Id:Date;
	bh=WvuiP2/ECDvWy1hdtwKoMmNlvqmQIFDbazyjeiMsCW4=;
	b=ABbA5nCAPpLSb7UwyS01Gg+/tcACZ9ACOw14H/VOS0AENb83/JC0DUe63cUUgO4I
	x5Kh279tb+0a+AIqpFXuUtDjQ9XCydrK0vwAT4V5ifzZ8fi/uE9gi2Z15bRcqTYNR0m
	t4pesUUKj+gwxtEd/jJWTzPy8B4n75iS7tpG87K8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659457253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WvuiP2/ECDvWy1hdtwKoMmNlvqmQIFDbazyjeiMsCW4=;
	b=iXLo4uFUXdyq7yrmSb16j3V3CV0bO6GFrHZhN0F/vX6EN2bcPXIHpRscqRTHr5D1
	mivZJr+L4JQPLmQAdQ5GQhBwOdIu4DeRn0JEn2ibz1fnf8qUxRBvAd26SwqkEGqSgNm
	tBPMUULgnMb2zEDQ1y6R28/4C4atrim8U2dA67Eo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825f5c2cf5-552c935a-1782-45dd-9faf-867c435cd4e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a5579051253365898fb06274c619919f87ce8a2c4b3a8c443845f27350fecd3
Date: Tue, 2 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659457252
