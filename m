Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138AE7478
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 00:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655769719;
	h=To:Subject:From:Message-Id:Date;
	bh=XiYDeCdX3p41Jw6Fcxo1+VztJbONnWtFVgTGCvI1ZIA=;
	b=hf4UN7G7pc4/FQPbEiM4FJIOYvvoThLpFmzcvnpQawwifOKNbxe6wT1LZlzWlXD5
	yP+lkQRlBWa4rjwiiymG43Cb3FF/nXh7l7agYlYsyhg6SIXkHI0I+IQ0dCze0dtqDsV
	eypkZptQq2mYaAAuxZGztsHfpuLN/xSpjoGc/YYo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655769719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XiYDeCdX3p41Jw6Fcxo1+VztJbONnWtFVgTGCvI1ZIA=;
	b=gjvxlN2wFH3ylNSA7PxnXaNi1enCBCUW07FGejsZ6TZ/MkH+pnR1BH7EeSAulKVT
	WOpENg+SfhJ8e9fcBWu1h+KUItnUorC5BHPccF1mlitXnKvCMQbA9ohRmCSSXaFoDiH
	RRGcbPOsdueNUvSLhhcRPmloB2cl+YbBak4rTBVM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818390e1e1-d54badff-d30a-4698-82ff-1d0a70c8f8a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7aa5accf85e6879c53e3d6c63632fc11f07c578f23a33bca34ae5bc27808b130
Date: Tue, 21 Jun 2022 00:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655769719
