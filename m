Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709041FB8
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 02:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652928779;
	h=To:Subject:From:Message-Id:Date;
	bh=lIGT1laKCJCD/7WLBQ+R3J8Cc9aiuwhu5e3blLk12Gc=;
	b=hL7QxtRNHAI7wSgATMyf/BUV4sNkto/Bw+0MNd4aihnozse4+fD97BGPuu9sl07T
	Jkhscg1p/iinzHpREccB/QghY8G+TOIsh8tFJ08XYN9J9/tFKQQHLkILQJdCJIjbW5W
	uu0nD2e+N8LvOG3+DtTYgU/OU34z9J0D9z6rsJ7I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652928779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lIGT1laKCJCD/7WLBQ+R3J8Cc9aiuwhu5e3blLk12Gc=;
	b=aPa/c4HXs3doWwMW11PYAzi6TaCencbRoN+Y4pAq71yQzCcAroX1CwAsHZ9A0hI7
	XWGx1ta9EksOpl9UKtJ6MQmI8JZNEO/EUKUHJD2gTo/JYMogDGmcTXsTIMjkq1UJnRy
	xcbG3X2rGeVDy2XLCBdkPIRCnoUTto6+NQIarpb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180da3b944b-57bf5627-63b3-4d7c-bb57-00cad8693e8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 538f632c599d3f51aaf406aae13c4a639763ebe5604523e214c62234375ffba1
Date: Thu, 19 May 2022 02:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652928779
