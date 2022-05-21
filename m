Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE7417C1
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 03:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653104099;
	h=To:Subject:From:Message-Id:Date;
	bh=jSbYEuFs5UKzdqpWmFU5jy0+oDpVaBbsZHd0xuKKTOE=;
	b=aucXao7pdh9mD4nzpVQ90dyWrJDhrsnvW4YM/ND0Yb8UXgqQMks9Byn6hRsDbRAk
	pnusRgAZCKEec714yzgQgdgOWKMO2L5Eiy+urI6kS6CxSsFPMogahQ4QIZEMGsFXvnh
	yKrd+zeeOoGuahD2Pv36tRd62a/Doktg6jzxJ+jQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653104099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jSbYEuFs5UKzdqpWmFU5jy0+oDpVaBbsZHd0xuKKTOE=;
	b=Q5Y3PnAIE1m0fjcFehr9JDcAQwqaHNNp+b6I2XLp0IrwtbGEZB3XTj+cUiRiIf5q
	MQNMCXXkIQSpAq7rCSYhfQeD4hhFTzX3yKhFBgC2knvGYJl867ajpS3zLGD9ls1aZ4N
	n+kBuikaYYyxgZw5oF8/AcfFQ1Q8KTkPYeyKB3fU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e4aebfb1-e6fe70f8-59bc-4a67-a96b-2c99b3e178ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6fc51d35aebdf9feda1d7b6f2a75de6f7d49d3c75abf365414baedd004c1539
Date: Sat, 21 May 2022 03:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653104099
