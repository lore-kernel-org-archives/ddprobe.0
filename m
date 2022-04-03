Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A19469B
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 05:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648965238;
	h=To:Subject:From:Message-Id:Date;
	bh=GIjCqsOyVstekjl6RqJc4tbQsIB7hN2kwnyIusG4WBA=;
	b=GZ5aM7/noiOw8ngKowOIuOvGfrDsZ/KZ4HOD2cEX68ej8AZ68GYVHjfnkQgevCor
	JaBFIAvxZiFQYBAHFFMffnz5ZHtYmwiOzzVjzToUnQX69wdRb/azVyBsIVQ2fnColmr
	UeSbuzudZo6Gl0nSOx6ycOFm2F4Y0DDMbfzqMVz4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648965238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GIjCqsOyVstekjl6RqJc4tbQsIB7hN2kwnyIusG4WBA=;
	b=KecpTMoyqndeq/YqcP6z9D4bjMlsv0p0k7K5SWrWkEkxdiicZ5yLm9NgQnzNAyPu
	f2KvVZrLMde75XYMAr7nCDoMANnSIOfNQQjTe75FpK0JATIqFsuwRMcFQ0QZDiMlork
	rj8v++fwaX+bo33fk55U5A8skDUdbYUXRLcDaogw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fedfcbe0a-e351ad65-575f-474e-b07f-36fe9f97d1e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4dc9a34bdec96342cc4b0303cd8631857e2404016eb0c80d9792b3ccc79fada4
Date: Sun, 3 Apr 2022 05:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648965238
