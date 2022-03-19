Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C1A5395
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 23:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647731785;
	h=To:Subject:From:Message-Id:Date;
	bh=95uCHjfwguK9G5whgu+ejQBhGys8K1/xHRToRcKGV/o=;
	b=C8XhtuGiOzYrOhaZaK/nlj7Xgjp5Fx+cfnF2r6dXmBOMNARS5Elna1YonG0GX0LG
	MsArfiX9u1IErhzaxp60MmeLvt78fPOfwUIT2jkZzgi/7Rc6pN7dOLphnjui0yi9iUo
	DaxPUQV98ILRprGPePr/Cvcy1oYL6VCDuetprXUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647731785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=95uCHjfwguK9G5whgu+ejQBhGys8K1/xHRToRcKGV/o=;
	b=JovskIWlZ8riroJkBYv8i8rqiIR7sh2NHwjLNGnF+FYbXrYinMUPA7Mw+3FOWtgc
	pr66PIqvH9fH/g4Z2ETfdj56D8CwZUf8tDl/taWer+Kcv8Oj2iYhZtuiJSanlSCkCf1
	tpJ3wOa5CMFs5kv6wqth2NL0ODuSkPBNire54jKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa477bc2d-dcba580c-c551-45ec-8d26-9b4e7c3ad8b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af03cb1b7ca67b97a19b443a42a3e51817977d884455eff168f565ddddbc6435
Date: Sat, 19 Mar 2022 23:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647731784
