Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C04D1365
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 09:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651223819;
	h=To:Subject:From:Message-Id:Date;
	bh=hgeRw4i2jjNYme7+MzBZz8rbPBXXF7IwaztE3G0ybaQ=;
	b=M/0jsvIw03kmasIV6XjkXfhKd5A2Oy+JYSY0EtsXiqm/2lhuzBGI2Z5I9l86vlVZ
	4yfRtdzPU/GwRQsJOOEi5UkZ6Vu23Gtt1MsKx7dEviJxyD9NRbjgk04bJB+oHpxEJj8
	P+WFcf+dI9MpAencMxZzwn9TUw1yRe0MqC806ixY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651223819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hgeRw4i2jjNYme7+MzBZz8rbPBXXF7IwaztE3G0ybaQ=;
	b=V7gzjWt5CRTWxsWq/dh1xHjhiFP//X0BL+PBtZC0q9odlfxr7gXPav821sPhRQc+
	OHr43jb2GcUUPCcx5nc1ABhtsbfWO2zTpR71KsN9ZgV3RDKekhHjL/eRIjNrhCA3jHy
	yv5Auv4uSKfnfNjJkHgxIjk1EOSZAQTMjBi0dKec=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180749bf05f-466837c5-bd43-4cbe-8cd7-e2e16ad433a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e312f05dae87baf9b23adca91eafc440c346767cff8d1cff66c6088a891fd087
Date: Fri, 29 Apr 2022 09:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651223818
