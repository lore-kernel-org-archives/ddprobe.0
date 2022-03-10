Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D37B7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 06:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646892385;
	h=To:Subject:From:Message-Id:Date;
	bh=G3FRxxMnic/90flkwy/L9J6Up0tbXpp0IMrrT7kJTV4=;
	b=bl5jj0qS3MVGZQQVOm2uaF/7gBnOSyjpdkUNF5FD/Y91Oy3/dHnIr1qg2aG9eZIt
	PyZHbA32MypWu8lRvCEuUh2rWIeHTmP3U8+/Bmrlc1H40s5obtpn5oRBcxfzSLkI7wf
	pEE/y4ckpmgcTMpB9RcR7LV6a9vbfJwxDpf8oYxI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646892385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G3FRxxMnic/90flkwy/L9J6Up0tbXpp0IMrrT7kJTV4=;
	b=ZhVdU3wuFaeHTuAXfAYchiGATp/EIF33lcDRs4A+IfX0sXkD6j6m/S9AauTGpwl1
	1J5O0hpwNrrMj4YP/i2yvzVL3hQcB/xQmjsvY1S5p/yyhD3S9bE+SgePzx1XUJ0dCTc
	HZVI6pyjX3Z4Vjh/h2SxA/OWl2twOe7bpSFnFQBI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f726f8235-b0600911-8687-46f0-9076-5ae750fa51c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b23dc612068490d207a514f891044eaa61413309403873674ee037eeaaea9fb7
Date: Thu, 10 Mar 2022 06:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646892384
