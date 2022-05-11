Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAE615A7
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 00:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652230079;
	h=To:Subject:From:Message-Id:Date;
	bh=LDEC5EarHNSNi2imYI4eGJh1F/yAegfUshu/klZZUSU=;
	b=IZ+lGaqDs0m1Ddfns3E4GEROrmIhPJ6zEBYxY1HIAlWD8MiWOzLuHjstbswjvbvz
	4dPqYlHH8gy1mzpmrP+cOYSEo2OcesZxstz0E+mj0mJOLO91hp8eS4Wied8DZhUqPtU
	3PNmcFGNxS3k9dqcqTC7HCCcbG3JgGN6pdTjQSRs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652230079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LDEC5EarHNSNi2imYI4eGJh1F/yAegfUshu/klZZUSU=;
	b=d7T23Bo1uQrBMQeq4jZjGwfyYQKdKxqz9mbFdMzfa0DZYB9U9nzjQhYe/L8lWmFD
	x2fJGZjbHZw3IMbw2ed/q0Zg/OLipb1LbO32nH7WcW73eyTahLR5LGbLbQTvyCaVoZg
	KTadQSCQi9UGVLssfXwDwL+tUgHZ2S7AglFgBhSc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b0964330-0532bace-5ad5-46b6-9960-3d46ca5df722-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e338bd9b1ff90eeb6d8c9be9599225bf815018c72c285e3a7e345e59181146ca
Date: Wed, 11 May 2022 00:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652230079
