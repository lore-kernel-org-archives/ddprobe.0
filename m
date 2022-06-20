Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFB37478
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 23:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655769059;
	h=To:Subject:From:Message-Id:Date;
	bh=NrHRsIwJXLSgbIFlQbXdMLGtYiBWiLgh+NCw6R/hgl4=;
	b=aE5uZdlDXJjDRWbkvA+akSpeHW4STwoT+lVIB91iNjSn5ADYIYkR6Dv2UT9vupmH
	owVPFMIn+Nhft0z4jgz+B8Nltz4uDYWi84UQSewocU0RY4q3gJwkaXMKETbA0EBfpp8
	AywkXYV84IysEGk0ebyEoOfq0mzM3ri62I9vovUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655769059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NrHRsIwJXLSgbIFlQbXdMLGtYiBWiLgh+NCw6R/hgl4=;
	b=U240KaNncnrsQuhd9BHc22nedZ3bnBzrfNPU2EwClZHw1r6BBJAX2SCCU/qUbMlb
	ZEHJjqBvlxacj9fyjNXKDECSM+bNOgICO9x30QpP0DAe9x5YtBBBIysCOyjciDRFYo3
	k0oSvVku3+gzhlmj+UQd7t3VzLxq7YGTrecePb6I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818386cfdf-7c96182f-88ed-4b04-ad8c-d6713d574486-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e84086d396b2e099c2a1d519324ef94e860bf8d7fcd3528e7c5078fa59ad1981
Date: Mon, 20 Jun 2022 23:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655769059
