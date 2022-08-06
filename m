Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6581869
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659795052;
	h=To:Subject:From:Message-Id:Date;
	bh=NHVqPRW0SW/jLB2YDj+hYVmIPJHrXKT23XvABs7TxW4=;
	b=YNRwKh6WxPP+mJURuYBgdS2pu/z4qGF4yYCOEMCeDdAjIRAkLXIXxS48cJr7VFRB
	H2IwO4UdGszHqtlD35Io7Xd+oaMRa1KCbYCQljJ0ogAnja6xY0YTJ2q9DkHocuxp+Ge
	lveDusWRyxpcFUr4iajbGrijqNeoVcl7t2oNINgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659795052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NHVqPRW0SW/jLB2YDj+hYVmIPJHrXKT23XvABs7TxW4=;
	b=bhwn+hYjruB6M8nWtWrovBON8/Abe+9KW5S0BfE12/qPjsny30dgghSW80gn14ze
	TmglD513G133kImu+XVtXwGq0Ih32msHun3Kys2XEQGN/wDbL4L5DlARpAYNEk0nV93
	jGlVu8/ZAz6gIF9gfHtbJ5toIY4e3Q9xLb9TDgmI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182737e97f0-2ebddb13-049b-459b-a8bd-afebbda2d8b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8369d1606406bd4fabe7d4a305376ac9bb3121c55642b020d3f91e1aa1d833c
Date: Sat, 6 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659795052
