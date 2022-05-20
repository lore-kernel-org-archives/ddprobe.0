Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299BB17D7
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 11:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653046859;
	h=To:Subject:From:Message-Id:Date;
	bh=sU6pY73G7UllN5SZt8+ToQa6Y+36VcdPo4fEHZrSQAA=;
	b=aUXyXSTafy+Hyb5hEOnM1f6XzEErxd1KudwA1ycbgApIGf/afDRYOODw/l5/RADA
	FCP4HOwUsljV0YVAt5kkTEKwzFE0uOAPVrdJ1mZqX0MEyJ30E6wLM/J/r2AQ5Ic7Gnf
	qH3+BVtNnJXmYkURlItBXCo9Rmnqmmiek0j1myso=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653046859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sU6pY73G7UllN5SZt8+ToQa6Y+36VcdPo4fEHZrSQAA=;
	b=R4oSZlF9ITUyACUHD9ksQYT2uxUXr/vvSEh+Nb2l4PUwLSb7zbPrkyY0FPCGzNl+
	v3p3m+A09vNkJLHpyx7Sc7/PGJr96eoP7htjlg1uM56Lffz0jI0R1rJvrgTdzs6sofF
	p9oBDykfu4AnGmxDPz6Q8tSqAt4I7Os8JGS7IqGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e1455614-4e05a4f5-20ee-48ef-a15b-7921a6da80bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8a8b8dfd13f42dce456611674e5fb23ce18901562d0f3c86b2d1e6bfca21910
Date: Fri, 20 May 2022 11:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653046859
