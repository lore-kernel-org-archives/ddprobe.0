Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF6A7E9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 08:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654157099;
	h=To:Subject:From:Message-Id:Date;
	bh=8Mm+SunzEeUTcdYrN2yOJJNOdMJ2lt4Gvi/zghq32O8=;
	b=KkHNAKCpO+AhebktpptDP3G/47IV/5CWOW16ezi8gKjCPnOmpFOUmmyLQgvEPcil
	0mszSOrhgKPEIaOt3fa9Rm536Kk6Xf/azIMtz8XqBpapW0OwWnqMW8UYWa9DyJ+JW+N
	IvZEOeZu9KkoJNJ936ImJO52PL/SI4kEFTwOb+cE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654157099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8Mm+SunzEeUTcdYrN2yOJJNOdMJ2lt4Gvi/zghq32O8=;
	b=NWDZYDq7ZxVkYZ2M8o2dSiubsBLSt0G5Uk55bM4HKcwBUOpS8OIUoMwsGbZL/t/g
	g0Up2eXxfuQyXiLb/D/rqOIlQDr4mxmHc10SIO4FyBDnWaThZ93cJK6aZDpJmJlcR8O
	J9yl3n4c1oshxPMbIZMTep5Ce96/ckuFpmUlptQc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181237240f1-e9311330-602b-4e1b-a281-f2b8d0a77a16-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2106b5350150cf3a2c80e3277ef3187f9259daedd5216f570a99fba4f5238b06
Date: Thu, 2 Jun 2022 08:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654157099
