Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 882387EC
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 09:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650274438;
	h=To:Subject:From:Message-Id:Date;
	bh=LgoQEaF2JM/wTiqLLyoJqV5lRvxFmJKxG8lAEpjGKJI=;
	b=MMYkBCan4uZww+aBFEZELsyYuEi3UZdqQsGpSeyPXgKiPDdmpslXZq6ulTFE/C/o
	s11V2udcyQqmV0x4gN9OzP/gzpDyufXbAuxuP5Kk7EHoJw9xWaPk1jhZBfSQQGt9G01
	iSqt87eXx8aP1fL6/+iA48jDxYNZIrBwIlxwmql8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650274438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LgoQEaF2JM/wTiqLLyoJqV5lRvxFmJKxG8lAEpjGKJI=;
	b=KInZ33yqMrnfTvAh4oP+heFBYpl9pH0URwzHOrWZBRpPFUfABiMiS8zivNP2TkDy
	sVCnonzkg/b4rRNL0esTe2U8/S+tvZ6iKdBz6eJ6Zx0r7nqEQBQPm4KWcnGXd4G0qTi
	sJIicvNdjhcxnSzg6PMY5eSly54G2KLbYZTLKm4E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803c058c63-40de8711-77e3-4918-931b-842eb97e30d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76bf99a5868d59b044dff7a38c0c9152755a587db4dfc2b4db57e490e287c5a2
Date: Mon, 18 Apr 2022 09:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650274438
