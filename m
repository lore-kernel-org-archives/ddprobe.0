Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B00B3D65
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 16:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656088012;
	h=To:Subject:From:Message-Id:Date;
	bh=+lj+SzMvTlvAFbpxNAST4ZD+d6yYoYjPoWejfIHSwA8=;
	b=baBi3nc1r5Kp8uzQM/+NM/7allNY3mw2OanR1bd4MuyIROAEkqJ/Micv14QsdnMR
	zw5UU7wbDLvbaDNXOSQrIo+R2+2q9oGQdANHDDR9tDu/J49KtBGUL325W1nXAT63H8V
	jCJyBwJsANN5LIcgdgcfMTEmjTJ4VwcEHwldrvGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656088012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+lj+SzMvTlvAFbpxNAST4ZD+d6yYoYjPoWejfIHSwA8=;
	b=WZQsCTb/wg1yPuVBFy1ujrpWFW3MEOztlhSpjmoiq2ECJNRyaAc0kf10pAK8f5i8
	WqrJZFSJQc0dKrUbpaQJ8B04dzPjDJ26rfN6zPGj0+dQKW/qQ6dIZXazOBc4p0Ie0xD
	Zo9fomwLqaabQOv+6igYCDcGk833WZ7JKPIg5crM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819689a66b-d21fa979-f42e-46bd-ba2c-f5c03e2ac6f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19ac32ad255a9620e41ebd5f03ad36249928c8be0966270b9b34be8d064df266
Date: Fri, 24 Jun 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656088012
