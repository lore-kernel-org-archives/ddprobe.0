Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE6AA1FC1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 18:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655232299;
	h=To:Subject:From:Message-Id:Date;
	bh=SvOamvfzQ8jUxjoICNv+fv03L8BmCCfBTKCigJLCjL0=;
	b=DCMNPhMbaelJ1GVF8QwsZvlUDsdCyhe4f479kUCHBYCrQmXlVbzBI27Zu88WX1Pa
	fx9UftnzwfBMcHe1NvsLccDpI072csPWiAzPAo5FwB10VMvLpfT/R/3JkKBhSLuev7S
	tl3cJGFDL2yTKOpYOuSYtNDz3Yg8U9kVb6dXm+Fg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655232299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SvOamvfzQ8jUxjoICNv+fv03L8BmCCfBTKCigJLCjL0=;
	b=goajoqQcV+xksnJSgOOr/IQk0mtKU+Ugu/RJryL317OaUMVTDyQHUfmMAS+y+YdP
	bENG+Sv+OMZ9Toy/XcN/If6kkellvtDCtYKCxn7WaBgcQbdPvrPmoh9RdUJ2y7IEcWE
	alABbkcnYGzUSFxkf9aCubwpyvjq8cCmq+zzy3mY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181638880e8-7d8d4e8a-df12-474e-9ea1-be30f70b1872-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90f3e6bcc799c8122b4d5c2ce0ed4ad25563932b2d766b4daa05bec164e4325a
Date: Tue, 14 Jun 2022 18:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655232299
