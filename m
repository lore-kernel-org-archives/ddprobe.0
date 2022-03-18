Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7175C15A0
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647562285;
	h=To:Subject:From:Message-Id:Date;
	bh=iRqav0LAd+hdXGxGxXAeuIJigtX0lVX0NywZ1fIE+j8=;
	b=WP+p6nO59Z/ZxAjCgJHuHZMKPSKnxnyUe2R25xieMCfo5VmmOa9Pizo2eEec471e
	Qt+qDfh7VyhAFAKHJRlaeqfq757RHzh+Eu7hiB0amj2LnaeckOrqavGFwRr4aCTciyY
	+ieqTfJcCyFNwJqNWbxX5BiKZDYG5n+fOLkM1vbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647562285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iRqav0LAd+hdXGxGxXAeuIJigtX0lVX0NywZ1fIE+j8=;
	b=QC+b+7l0uybammEA/eYTYDIp91BA0DR+xmO/EGMNPrIjkAF71lT7fAE3IL0OfN1q
	0FYnWTuva+CK9W2sLj4iz1B9Lq0WXMKqnnFwWb3Oa/O0OVgaC3+RgkPN4dR2Ii+yPI/
	xqYxG9iqib70+1vTjHX+yJp8gbepUz3HQo351ofI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9a5d5f44-9340d310-af78-41b6-b423-d1c02c7b18d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b22ca2f84c8c5a6ca5102f79d476468b762f8c4b727744e7c4197ea1f5d3099
Date: Fri, 18 Mar 2022 00:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647562284
