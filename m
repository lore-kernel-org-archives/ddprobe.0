Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E01A7E9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 01:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654218719;
	h=To:Subject:From:Message-Id:Date;
	bh=J8HeeLclENEEMCUABPL7jniWF205DJeUw/umI00KIoo=;
	b=LALpTiDjtnQPvuHeCxoBN/HAEY2oQp/BJdjEVg7rc62rRRJ0qou11tcaPRgwlhVS
	s4IBjqWhFk6qO+GCjC+cWCer/Yqnf1PsztMOdbZXTdoBcRvMU/gCZYEDJXVVOCLvpeX
	iVdk7F/k84v6llfajkNhkbOAgyr6+NrDoXDx1ejc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654218719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J8HeeLclENEEMCUABPL7jniWF205DJeUw/umI00KIoo=;
	b=WhgNpzx4fSGY5u6jxJw6Zf129HrleCgWZKA+cYv7ucttIU9CY1vx6itoy62OT/bI
	N7GNyNdb+Jqi7v0TNNskNxgjcPgDzzodxWMIlxLfjAEHPOg4W5dRLc88FZYOkk72ilG
	CzBoPX2Zwyojqwt7BedqerWujQ/xcDEmtNteuxJw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181271e8044-d2087f0b-e3ef-42fd-a4b4-53f90bca512d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c2733e3ebf274fdc45feb55be71abf6c043ade6aaf594ac691cfe34a5fecc92
Date: Fri, 3 Jun 2022 01:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654218719
