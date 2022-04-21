Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 852CE7A
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 04:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650516898;
	h=To:Subject:From:Message-Id:Date;
	bh=dyPW3ilDaHRE+WGJTcn4hcCowxLTRX0J294D1+YAMOg=;
	b=bSto+rqipQdosd7ITW2TcXMaeaMaraaAhhMWrMbm9Vycv6vYbgjT41kBHtHrMhyU
	phbqmqJppGGklPI10feI9uaO0iasIlDs3c+b8DkBdHGS4TY5L7ooNGen9SBjssx7CPM
	bCxrOFg6B+LX77Vztv18nE+wZOtmtAx4221va7BU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650516898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dyPW3ilDaHRE+WGJTcn4hcCowxLTRX0J294D1+YAMOg=;
	b=PsTxa6n0bTxnychAkNdjGcxirVxVtkBKZOY81XIqq4izBVOVD6KB7Ggyc10BLcek
	lNlAV7XvPDa74k6Zd/N/o91FQQAk9K3Yovfmm3qMmpxchbBIQfWXd9oMonS3Ao9uoNq
	2IuF0EDRSWZ5h9VMnmCYnJsYzRB/E5B0JfQuMwDk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804a7931bc-568203dd-6c70-47d2-b067-7de815cf6007-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7d34097ef6ec7b60270378733d900e12516b07267ca3f0b57a0abd4efb28453
Date: Thu, 21 Apr 2022 04:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650516897
