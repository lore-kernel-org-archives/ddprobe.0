Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B7A5C9D
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660892452;
	h=To:Subject:From:Message-Id:Date;
	bh=NTwsgXIcLtFi4zhoNqTdvHRH8oIdAGk5PEDfEGMTxtw=;
	b=RPTyhlQkiG4CvRHDNgm7joMqPFEsmZclhqyv3JSmLhOdFsw5S56ef2s1q99vhLRV
	5xQtENX8aPbK3UDVypzS2FE+/We/XREtPEFqBzoHxnGCHuwBwAplWgTn1yicz4Z2/c7
	Rn50XHOiS75GHdscEWqWPXKfxRnDkeXTxsxfG0lY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660892452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NTwsgXIcLtFi4zhoNqTdvHRH8oIdAGk5PEDfEGMTxtw=;
	b=QduT9fzZ5YO9mQal7Cnc7zdb/alVtzf3M363hYgtbJKbiMiRBxzZ0OH4lZyiXoB8
	x1lnHaVcxFyquNNGlJhpSeSMJW9RyTYRQI5DNVEL05EJADeqWZhd4LR2V7BWKTkWMl3
	4VnEdzy3uBXrxHL9RQSa2rEfy29dV91+Ac2RtfK8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b4e796fa-2de452ff-6ce5-47e1-a733-e30eab593e91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c45b5cab73b06fb56f2f1ec8e1c711981a09355536208dee0e90c4a5db480dee
Date: Fri, 19 Aug 2022 07:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660892452
