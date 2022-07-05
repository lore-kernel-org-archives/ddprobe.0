Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DB1196
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 06:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657003012;
	h=To:Subject:From:Message-Id:Date;
	bh=b5Xtk7Qhb32L4f4GTZqrKWe4oSPawKfIG5pjqzaIF9E=;
	b=N8AwQj6cARFgfGMPcRYYc1uIhQJRgQcbKBSVc5rF9J+HqPemXLVwysHnEHdZNdwF
	ZDkj6VdM6z137mJF8LyTlxxXgFFkYjak3irNNnVkRSW6GWIoZNvjZIVzVdUCcyH0jAt
	jyiC+/YyknnP7t/HWIB4/qhLWSzS0g8a/YovgWaQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657003012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b5Xtk7Qhb32L4f4GTZqrKWe4oSPawKfIG5pjqzaIF9E=;
	b=jvxQPhT/swvRcOJV4/zydxi9bJTNGI80WNTtiyVEORZREXs6aCYsT+VWv7S9X8kS
	KYcpiWnCt3VPxP5iKzGubWFzK6uxh8A27aEtcTmWQvQE4JZR50soKNGFUVjQm77wf+3
	V8togQYjnC9r0Cy52y66sKgLTGC8TNKGfTxHXGJY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cd1370bf-45ce3f5d-be4d-4e88-ab06-7f3654f77fca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bb89b0cb018003e12540ee438d603708a2778e1649963e011e7a81e7b977ee7
Date: Tue, 5 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657003012
