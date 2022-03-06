Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F561FAD
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646561785;
	h=To:Subject:From:Message-Id:Date;
	bh=mgf9d1H2p5hwkJR7dwd37cTfNMkRv3NOrrpCL6zk/ws=;
	b=VwuPAk9fLcDfSF7DBK2QnQfns3JkQtuwJz8tr5aERYGKw4szKmyQ9ERCDatG/2Cz
	jCkEOh8adbxAwoD/wpQQT3JppzIFze1yR8rhVV/1ZLtKiiIyT3mF0yxsrIQuZb4M9w+
	JDzrlSQKgjmm9sMLy0MmnVlRzv7fhI1I4oSke4Fg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646561785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mgf9d1H2p5hwkJR7dwd37cTfNMkRv3NOrrpCL6zk/ws=;
	b=Ltcb8thFevCToiiL3QoHnLqtlwubqpvGeOyBAhTldtemKX5VfIjR/OaKntxXnAkJ
	1MMpc0hGrKEUUdYW8OxqS+PIf1niNGIHDNAMN58S/oZXMfRmdFe5f57E/wMHSWowUiv
	8qUZBVlFcRiF8o1vw3lM6elduJM9YNlx4QUiXqgA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5ebaf38c-819c32d1-5675-4a99-8c4f-d7d715bda69a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff7ff9ceaa3f9aa75520e462c1a8675d34b1a9ef6e959f98a4e3b32fa085c858
Date: Sun, 6 Mar 2022 10:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646561784
