Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA7A7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 05:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648100578;
	h=To:Subject:From:Message-Id:Date;
	bh=S6kJocQaUoOw7KgdRuVhb/bXAUrWbQDg2g7Z05RTDSA=;
	b=PRLT059HdWvyBAMQcEiKK6ZrvMJIH+B1VAhhKDbFXwlm/BO1ONQ+yto6iLkfoVDA
	p8GQ6/ZjdOlkzvIvbMft0QVK5qqGuVlNSZyXhVarAdFpssvC5i5CRsLG+yZQXW/F9Nc
	KCD0KZVQeL1l/YcmO1ODGwd3/tX51SKvwRrmMVAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648100578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S6kJocQaUoOw7KgdRuVhb/bXAUrWbQDg2g7Z05RTDSA=;
	b=IqE0ECVX6gcrPGq0qAYbXe5c/zuL6TX9almhAVbI0oXs4OazIKokuZXIPD3mpXzq
	yigi4r2py/SAjWrlC1dNDsr+ot2RXz4W1XVOUfL2+tNbMIVMgeeIT5hI7dOqWUtjZ6M
	xpjbuSusm236/qkgz5sW+UOolzA+XfKKfid8tNPk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba7313c8-255a4061-3866-4654-a6a7-92613dec9e7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e863cbae698bbbfc6541c60b544417ca18a939e0f0d5d77697999cfa2098fda5
Date: Thu, 24 Mar 2022 05:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648100578
