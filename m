Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87ACE110C
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660653052;
	h=To:Subject:From:Message-Id:Date;
	bh=mXRBkEiRQ7dFyOvZ53cuxf6b1kdBMtoczyiQ/eb+Yvs=;
	b=cWZno4CB5cN6mjI8+YNfYhPVah1QJwtdm+/4sNopTYC0k296Jq00+jFIEwJTxG7l
	r7SbotQ1SspziqkZZ2ZUhG6qY1/mvAmJt1Isy6FtrOef25F50ILkNTIg2VIXitEtJ/7
	n224ukQkZzSXbnDO1RizOOC6odA9fBBb5amGa63A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660653052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mXRBkEiRQ7dFyOvZ53cuxf6b1kdBMtoczyiQ/eb+Yvs=;
	b=BaEFYuLhXxQIDnMkUrjQ+UFtoS6wUdQ6sd0YXUeaaECPY0X6jDL0vTa1GdxyO69k
	8OsFE+K5s4jQlfOVYalskhO3pqbpqaXd1p1TmIG91thCTbRuPKp2ZThcEMNaZSm9wXz
	357lRAi1eZneMibSKFn3VycXfcS/2omIhz2XnPfY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a6a2a39d-4c0ed855-17f6-4933-80a9-7a4ed7c2dc05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2cdb02ed1afdb3600eca20d34a78eda9b0a06f90bd01fcf9dc6902df9b4d0ff
Date: Tue, 16 Aug 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660653052
