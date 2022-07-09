Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B6AEA4
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657364212;
	h=To:Subject:From:Message-Id:Date;
	bh=AhhLl221nuPID9r2kdE8n+ubL5DnnA2vVtL+GeTAMw8=;
	b=kN0GHnMG/1I/+4xSjcrEoavG78M2V5XLzc5WABfN45dFUe8+DnKmw3BAjJQdLXsv
	5HxFfKyi8DJo5u3QeX7EXo/uX8L/HHkGmRxxjg/ilN4ZEPEupBchPElfnpP20R6V2b2
	erUYAUXmnTmBRsaYvgwX+iaNioKpBrxS4DOGltI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657364212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AhhLl221nuPID9r2kdE8n+ubL5DnnA2vVtL+GeTAMw8=;
	b=NKMhGzAl1J993Yl0AsC3qKgvWjtlSj3hHwG96DzZD7bnmnFEqzCZ/cCb1bBZB0HX
	Vb77eFg+KFenj6mMhAxsZB+//shjk0eDlZMljm7f6RiGgO7LrFQF06duTzdfs+Um1u2
	+MExU4azPmp1GwBHSj2CliqGqCvZXS5E3+wO4QU0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e29aea32-8ebdd2a9-387d-41b5-8b57-d1b1183dd4d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4024594f1d5191925475f859547aa0f579c4a4b87cf55c89ef0e129085eb75bd
Date: Sat, 9 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657364212
