Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0B97A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 03:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650167518;
	h=To:Subject:From:Message-Id:Date;
	bh=d0Q+CkFGrbqJT4lN/wJgjYVKEQviPhOPadLyIHrk6xg=;
	b=UkBDpXa2qIq96rhFnO1b7e5CsMHKEhxe8utL+mvD4j9YCGqW9uXQRgMunMC89OcF
	Nfw4V8X7zNKgYk2OT2G9vksZe4UBqdjVr7YPmwa6NyN7pIbyhPRVmIrgDsuGI4AP0Bh
	42SqTOhlggS+BXQGpLVq35+OU0UM0GH9QkbawY8o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650167518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d0Q+CkFGrbqJT4lN/wJgjYVKEQviPhOPadLyIHrk6xg=;
	b=a/2XDQS6x1BYhQt3UUKO+cdQGe1v0OmsRdxuY3Cm6JvXM2IQOTF7rgz/oJO/dxHt
	DOdYrroRGvhLVVwlsU2EkCGXW5eFR+YLwr+DdMjb90ZsYb2dxYqcA/1p3noJofc0Jnl
	HTDL0bN/e4y1kKq06cB0T5GIfja7JVcfttXZBeG8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018035a61469-fcbc60aa-ce9f-4e30-8109-4b6057b557e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26d19ed6d0c5f7007fb5d8a4ed6ef02b9e2c04aecda49bda1040429691819aa5
Date: Sun, 17 Apr 2022 03:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650167518
