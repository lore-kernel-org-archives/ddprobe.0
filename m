Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1122C7C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 20:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650831298;
	h=To:Subject:From:Message-Id:Date;
	bh=6QHTFHwjZOQ4c5niyG9jE68mncEAfmeryAGLodC2x5c=;
	b=cAW3F5lFXz6b0yadS4wjNmEFyNKqrxKRwRIoe7eM8O02fo/cXJcWK/FCN7r/M9ld
	NwLKIk/rp/g0J/inPLXqWG1XOCkAseGHqrXYXR4WJ7qDGQhM3PHL2HsHs0TwTwxwSMi
	tKPuW3EjFu1eBtpoGSbyXL7eBiDpGk3C8Vyh/KVY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650831298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6QHTFHwjZOQ4c5niyG9jE68mncEAfmeryAGLodC2x5c=;
	b=IpgUqAfRAPcRXeG0zfhgBeiKhHlidpjh7S4KgjovPziewbWpcW/jYvSg9agl/xdK
	pDm7w6zl4dzQXp5Ms4r8zyt9WJkWtA7ju/cdTMGHDY9NiALSvhf+PRJ+ejmzTSwn2Dz
	yatQ6Qg46sClz05Gc/1B+BM9Ixbzuq0R74vDOWbQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805d368edf-b374e92f-502a-4e50-b861-75eb46a4333a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82bef79df2de5e75045dac6c0a7f9d3fef23a7629554e7362173fc3cd2ca97ad
Date: Sun, 24 Apr 2022 20:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650831298
