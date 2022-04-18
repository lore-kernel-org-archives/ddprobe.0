Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A427F7A
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 15:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650294179;
	h=To:Subject:From:Message-Id:Date;
	bh=Vi7TdYo8ChxAmZ3FWftl7Mje7MPl0VFb/9QcBlLNpe0=;
	b=VpMVEwPvGRTXYLAjiVoPQt08XpdjdMX+FLtzYRphLbLZdBAixeGIFRJhvPZwFx6Y
	MGbI5chNUx2af1VVh5uR7LZwqMnrnEJfoOK3vbBze7uVpGLZqGIWCN6y0xA6PoMCAma
	FnzoT3tNi5grM0U2nkmO4cOqMm4bKHsBMPqctvgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650294179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vi7TdYo8ChxAmZ3FWftl7Mje7MPl0VFb/9QcBlLNpe0=;
	b=EN66sVD3t3RZKUd/DfWQF4GJHEbH5pmpRdm3+5RHkDico/TaDz+ha/c5yfgGpHj9
	gkFlbrWhyIZn/V/wFjrTv+XaeZc0A9nNyEN37glYkUSPAox5kXFv2Ol6KFgbwRNN6Ya
	jZ3SovLMb5/y1dHBTCExPqDJ0vISOd5XtQ6DFffg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803d32c1bf-d714952c-f2f6-4ad6-b9c3-a87c0ded9b79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 356958035c04fb8a02f2e28bef14d9722d9114b4488dc6c428c6ca46bfdd512a
Date: Mon, 18 Apr 2022 15:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650294178
