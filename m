Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF216622
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 01:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649467738;
	h=To:Subject:From:Message-Id:Date;
	bh=PVtFzlGLTNrFgLQiASLPhpTeNwJ3oANNoyzk0NACzt8=;
	b=YjPa5IVqUrLOBnYnfm+y6PLN17QuJdSGJtK71LIc7OzaAvlYS72wkluoqSVnf2Rp
	PjdsUSdulLxo/oY5ybIerS3iPFxOYhWc1Aq0pUCMiwoQwqcLAidBx5ciOFkdENp0XKQ
	7AZbts9/RgFMwcr/MzAjR54fN7cttMkGjcQXNPbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649467738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PVtFzlGLTNrFgLQiASLPhpTeNwJ3oANNoyzk0NACzt8=;
	b=BXeJSIsctVMxTywiAZ0Rfg299kRKr6iZEdGUWkS+fhqJrn2e05q47HAPhoC9bA05
	C5viP1j8VjnvyjaDjGOMVe4JTnmC2K6A+lwPwD3ZX4qlCDgxVBZL5fTM91FHWTA6y2h
	de3oYsTqJJGv83smm3SAS2/sQcN/0V5d7wKJz4cc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800bf0488e-9c89333a-64a0-4a15-9520-9f02da3faa43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94e0af74d96aefc889607bfbadc6a70e0af30bfead7bd3c9a5ac0d62a531f364
Date: Sat, 9 Apr 2022 01:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649467738
