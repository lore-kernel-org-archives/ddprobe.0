Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4DF2595
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 17:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654881959;
	h=To:Subject:From:Message-Id:Date;
	bh=ZuZ+NU9oZWEuUSAuXmpVU45IqSJJUOrzY95UwxKo+eg=;
	b=JHNkTO7W6/J0a8bhrN/WR976ju+pQSwz+yDYBYnBshkx6ZVOSIWlJzdt9umLxxvi
	JlHOnFMcnWY5vSPvImTp/v2SkwaRD7TCziqBJQGVHcdUfr9yLAXlJuE2VV/1KmSLux+
	MShivveFgGLbF1PyfMv2BANm52EEy0+oTVi5ITnI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654881959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZuZ+NU9oZWEuUSAuXmpVU45IqSJJUOrzY95UwxKo+eg=;
	b=KtGcum2uYcLYqMurSxfZiSdlFqObfS5dmb4Kjl1Zdr4xOMyjhooj4SlpLgFcK/GB
	32cRZPTLrSt5/tVubD3waaiiDYb77Fc3st3VN7r53aCg3xnOXdkaP0jLLyfTge+Ajiu
	4EK6rh+0sDkFsMegobujrfBGusLfmcOgkMkwFrbw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814ea6bd62-6936faec-cda7-471f-a3b5-d3ea77d15bb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fad8f19520d81e07a2891d5bba4d6825b64770c2e1adf745a9724c61c9acba3
Date: Fri, 10 Jun 2022 17:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654881959
