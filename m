Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9EEED4
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661253052;
	h=To:Subject:From:Message-Id:Date;
	bh=Ph2Jf7OYtzn9TSzc7oKsYNB96cMwn/fyFcaf751C5FE=;
	b=Gh7yTzya26l+H1dw9Rg6mH1vsqM+kRvWvAIfmmNfqbpcGZWpB4uqUnwBeAdk5lb6
	CyozdNyBfOtb6HEWPQo3CoxwKLvByKbXhVFVz3immV9Q6RpfWdAfkxXQOMb70Y/UQyp
	tOAZ3BuIGT9V8MR/66t9NJFEylurU7d60YO5uyhc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661253052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ph2Jf7OYtzn9TSzc7oKsYNB96cMwn/fyFcaf751C5FE=;
	b=I4HBTAYuO/yJYmTwrFzNR7ZZc6/tbYXi+fyz6hf3QeuBALQ7HK4ovQ4mBupOCrbe
	OnmlM1ZThKHqHdHi8TFiXnXMJyF970vFw0DYQMm/kaFCLZlgoQDL0aFtSGJgplOqj3S
	aAYMZQv2hvGTKpMMjg5Fjn6BTGYXJUViaQI5E6hQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ca65e8e2-8889a7de-df34-417f-aadf-b24ee3c8c385-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9be563058465759bdc4a3280f183d9cdc273be5957b597778d19f82f9f8a239b
Date: Tue, 23 Aug 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661253052
