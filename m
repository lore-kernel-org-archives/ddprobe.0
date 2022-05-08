Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159977E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 01:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651972618;
	h=To:Subject:From:Message-Id:Date;
	bh=3nFCm+KJHVOVR84YHCW97EPDpma6nCgczJozZhB7hes=;
	b=TgU4Vlk1D/A7YQYG9Cax8eHw9yW4fNWYLL8oEo7B43Tmc3nMC7xLhky2LG/53JH6
	XTmP1bjo+DBgJkj6LsjXCfeGNlAsxV7KF0bUGkdwwzc1Q6fvCkFRxiriIDT3pob2HPN
	kNAlpNdJF2hTRgglyVuHGj56e8lg+cM6PGQnpFus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651972618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3nFCm+KJHVOVR84YHCW97EPDpma6nCgczJozZhB7hes=;
	b=NEAq/EBmRdnZBvkYj0qyHslC3zteWwKc4Gdb4mNrGMUdV0u05XiuifgLoZgv9Ws4
	k74HdiqQeqEW+x3jiSu4ZeXgckYZBnbuBNFWQkF+K4mP8WzW03SP4H6Ljz1YczIDcAb
	wM3i+Gh/U7vbDiBbnuRL7GLMN1a9Mj5S7SoGRQTk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a13db84b-62c25855-0e8b-401d-817a-daa84340f833-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28c27b8c57f3363664ce37013dfedbdbc7bd2e698967ab075a2bbad5bf27e345
Date: Sun, 8 May 2022 01:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651972618
