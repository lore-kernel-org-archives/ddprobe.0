Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C0C7F
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 08:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652774459;
	h=To:Subject:From:Message-Id:Date;
	bh=sJU+to8BK4Rk9WrT+cByIFudvLBAP99f2XLmIhfbta8=;
	b=i850GRNql1TFnSLc1/gbKClyH1It07IH4+nKo3sJUy3BuowNH5ehwBuKQILnmg3U
	igkhLlgowOewTGw3v8Xx3Z9ljtJvcnrpY8MUMqud4VPrZAljyzluVfIlnw36pIPKKqu
	sPkom6loaYtaTs1GJCzJVMMQav3zQZa1yTFQPKf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652774459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sJU+to8BK4Rk9WrT+cByIFudvLBAP99f2XLmIhfbta8=;
	b=E19i8r55Ct22Lk2ybCLNSpi7yDEIezr9EBK2Po2UBdoiF60ATUxLQFSFAQEiRTvq
	M1X3BvSD6bS0gMU9WSWwd6qX8LkrKR9J9fag4FDcFWqAtN2FI8RL3zxu5qpdQ89JSsw
	2PP4C3NZ9JpqE0OJJfE5ZhraE44ApMO3dg7GUUE0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d108d7a1-57f06ded-5c16-4041-8d6d-f5d436abc4b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 401b723fefb5b4c84b6b2b24db94c6cb0ab126d1cf71c96a5e5764822b243cf4
Date: Tue, 17 May 2022 08:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652774459
