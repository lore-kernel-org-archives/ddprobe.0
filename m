Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757593FF5
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646025685;
	h=To:Subject:From:Message-Id:Date;
	bh=t2oN7mAdU7TMeUqhroXA4q6i2nlpfIXUDr5YQ+Mj5IA=;
	b=ecuY3nZJvZZkNCTIv+UAcUPi94v+ips4Uz115cKnlWAy19clMuqb9ujs9iwwfFxQ
	hx1S6K8CoWT5z3CvGe6ReYtM6lgAQ4cKwAnmnBaOWo9Ie+tWghhtnYMw5Vcvt2EsoXU
	/pKlgG0hPV1AzTcIxJbYosWF5xjJ7QeZQ8n9LL/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646025685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t2oN7mAdU7TMeUqhroXA4q6i2nlpfIXUDr5YQ+Mj5IA=;
	b=V6bmwueul64ybD1EKKO/ciz1MRrGL6JDKS8YsAnJH9PINA9nalWoSrNg8xBkcUxs
	r4tGl/F9Pm9dPDfO7bHkaEr6aaw1tGa0eoixiCFMW9n7IxvPbSWAsr6HRMsN/ktQMAl
	FPLZH+tdqvY/g+iB8QsnKpZwZ71+ITkqNgu2FUFg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ec6b753-f3bbe162-c7e8-4ec3-8109-b42c04041bc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8ca3f563f6a80e70a1db6d28284773a0f1c10509ac029740b5f127038891aeb
Date: Mon, 28 Feb 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646025684
