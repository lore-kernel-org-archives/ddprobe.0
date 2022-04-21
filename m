Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 705FE46B5
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 10:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650536638;
	h=To:Subject:From:Message-Id:Date;
	bh=as0q3Z79nRkY3vxuydg9ZAmjpdXhlJjrSXsVOv8uQAY=;
	b=RvNTvsmfURYmJsCcXxDehaxJlpGn8AHhOHor60diu0JsZ4XWXG4ndcDrNeWYYP3V
	lKbfG7yY+yAWcy23oXtMYr/HMIWZgj2tzNvMjDgpT6vPimLyA1oruYKbTQJmOlYf1w+
	D3+Qg/Vp5BhHZivb/rPJkg4ivnEEU+kZR1iY2piY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650536638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=as0q3Z79nRkY3vxuydg9ZAmjpdXhlJjrSXsVOv8uQAY=;
	b=bfCIJ+jXj+1xFMJzOGmRgM+o9foII1o3576Fwhd/OIdH223VzgaPUIy2X9wiD5Nv
	Pk8UCLabzRdVOYkNDt6+sXMl4WU04aAjdR5ZENLhlWTCWe+iyUFI8KlPqgi8s3BCilf
	OHqqY7OdZmMEylUDRHgNMlAn21v4nydJXYzP4q+w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804ba66752-cf5f5850-4d6d-4362-8413-9e9c88eedc65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4113c4f94a1a530bd15b1b0a055a2b40c9b13b519eaafac8968253090804a17
Date: Thu, 21 Apr 2022 10:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650536638
