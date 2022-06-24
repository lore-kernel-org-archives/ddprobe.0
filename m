Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D8E3FE0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 21:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656105412;
	h=To:Subject:From:Message-Id:Date;
	bh=OfEtN2E7Hk984K6W56/v5dFIHU7Y5ofGFXct6+1TbPs=;
	b=kSNkFkQkdL+mZRCCDgQU5Sy/1CtKEFu8YTL/0oTi4T2SPmP+RkQyA1RHizIHKFmX
	iqwUGiDBY8RGb3F09/kuqshgGfwr0B61hw/N0qXmK0Hc8kfarVKgajZ8LItT+A95ZHF
	0jqAzjh+Jf4QkSOJYqeHIBuo3b9JkvNSTXXv903o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656105412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OfEtN2E7Hk984K6W56/v5dFIHU7Y5ofGFXct6+1TbPs=;
	b=XSGj/maq+mrz9drAarEbp5lkmXEmXTVxtYLzKFXqAafSWufFvmZgU0HbcYmQeZ5S
	RMxddH9v6GvAp08JqUaBRwSvOdYI0AVDDN6y/x7LbhU+kd5t9/hF9TDCWlRfzEJtUtB
	tzQ6yZB0nmG5HW5YFUS7BuyUPv0+xTxRYS75frkM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181979326f6-b1757aaa-52d5-4ca4-8743-b55254fc124c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cd11adc7117188f5335bb210d6b0f9ff9b0f92e52fcf078ad6a5b2e5ab24e68
Date: Fri, 24 Jun 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656105412
