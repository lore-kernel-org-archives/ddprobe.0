Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185017E2
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 05:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651816378;
	h=To:Subject:From:Message-Id:Date;
	bh=dF7ZB0/uTNsQ34xxAcI/FHHDrVfuQfLoUzvMIOvdYZA=;
	b=MMEX+lOjxfL255cA5QQ/Xt62LZK/gkC8HOIH5kCvZlei1q1qXKbrOYNe7b7/pI59
	djXxMt3GutNmQgnUhrP6YDrtMAGcKkVHNxy1s2jmsQ4yVRmM5yucFbOYo4htTyVwP9X
	HhQm2RdZYFsXTAM4yaxqjit5WmRaX2k7k88THQHw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651816378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dF7ZB0/uTNsQ34xxAcI/FHHDrVfuQfLoUzvMIOvdYZA=;
	b=HIFeHWmP1cxeyHntsi5Q23KT7Qc72UMEeD/XyyPZURDLfAstbSTshzSZOsvpKem+
	wHX90Ngf5zJ0jHufN1W1gIUUc/q1M9H852LI9Ns0VCU7OI95pk38cWtahC9XR0nmv20
	+ifBjPhPl3qPMIMpGip4/S1iWghX3+TlrmQVkl2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018097edafb3-31fbbf18-2f1a-47f2-a25b-8feb865aea6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 696c2ca4e60828b81c9b06fa2363e177524bc3d26860dafa9878de4c477859af
Date: Fri, 6 May 2022 05:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651816378
