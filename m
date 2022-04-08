Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0542623
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 09:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649408758;
	h=To:Subject:From:Message-Id:Date;
	bh=sqX8FMszQaKfWI+B+/P7r3t9AoibMKMHSETQR64xj5Q=;
	b=WKVdljhX6HdrnuDbw05HiTayWE1Iz9oKeNvHCs5Ell+CFsUH5U3q8VQwPnLGowGp
	TXh7i62Fe/Uq5A8TmiB5fFp3kUNNO5kRKVXbxjx+lmtptaKJMzA9tPpQiYKB6fowCNu
	ksPaKewMOhoUXX3e4qSYDR4Ey2trle8oHVUkGivg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649408758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sqX8FMszQaKfWI+B+/P7r3t9AoibMKMHSETQR64xj5Q=;
	b=AKCKMwOXLHbcne+tmGkltykuoDxsy4RjdW1uri3k3kiW375KqK6zQssczOnstnLf
	BhXup/J8bcwZ1BIEkTMXw4Dii0xgEjEuR4G14BiFwwOhmt+cz3Ym5fh/878HdJ1LPX2
	lQ19s1/C7CCc2wGg0OwQ83rDs3uZyjoMNqYx247A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180086c5230-3eba8fa2-89b8-4a26-a8d1-082b6241e7d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9899b35a1dd32f9cfaa6d1449a38fe0f75821780ae419afc0fe6dd2b3cdbe59a
Date: Fri, 8 Apr 2022 09:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649408758
