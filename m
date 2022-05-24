Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464FE7E6
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 07:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653375959;
	h=To:Subject:From:Message-Id:Date;
	bh=kgkGWIiTTwoxfKI6mibe85gwKBzmjviSFDoe1+1W2oY=;
	b=TV6KObmfO8ljESpju2UmQ5+qGxoM4AbWq03vYfSbnj6o072Ck/+W7orvaEhwWoXI
	wnSmezSPGkjdWjPUgUM+FHlUkStMIpYbgcRYA0mZZETeB79rV6jmgScf2puFzb9DUuv
	j0NKk3RN6+fIa9D1Uy9YLAv1taSRYweBpvRHbqLM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653375959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kgkGWIiTTwoxfKI6mibe85gwKBzmjviSFDoe1+1W2oY=;
	b=jHFH7zhC+W3NLm9I4dh09yalRhvQ5E+cpLCXRSyySlNugOhGqkWVHdaDYFkuoQRZ
	5PTaoL+wxU80Fcvv+GUKh0EMgio3cV61GlMoFt2ktLbiirXcPxHiF5bQ19x41teLS3w
	tJARxUIDnLKIK0eQ1Fouzw4mQWVO488njGpJnU1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f4e3012f-01c68927-f2a0-4d7a-a23f-aeb39ca5b334-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a176602c2f0edc17251b35539db5296161d4276cf85e207e88611fccf43ae3e2
Date: Tue, 24 May 2022 07:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653375959
