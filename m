Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132E77A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 14:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657981612;
	h=To:Subject:From:Message-Id:Date;
	bh=bFtXFkxHvdt7chZWU2sv0OOqHDRgZYWqY/T9H60OwWE=;
	b=YTnatYbBVXUEqjOLCL5sinxernarp565CBDB7zwpilBBrXbLFf3VZeI3CjUHI8Tb
	IggQZ59bB/oBDCmk0ckQxpQEByAhAysq3zp1iHvpp4O96yz4sy/kPXzTVCPkz3xO/7a
	+1zQoLngJqS9Q1CqirezagBwjC1a1mrKU78X7Wis=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657981612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bFtXFkxHvdt7chZWU2sv0OOqHDRgZYWqY/T9H60OwWE=;
	b=T4VJomDJcZWgrNCsL1r1T2/Wqzwx70PD5HHjqhJK77QYZVpbImw9qur/lWW4tdPR
	bllu/RehIs4gkrZ9xZXcGYMGYbVe7BUtuiXPrrwScm3Xx1x3DkJqAijNsvahTa1huNV
	v8fF795+vEZQYVm+eT/IT6kpqKV6M+LKlhOm+Gb8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820767b134-f43534ce-e42f-43ba-9703-26e587dbea4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ecd0af743f2f8ee3a5dd30d244360c348bf404a540becd5fdf5ac0635dd3c22
Date: Sat, 16 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657981612
