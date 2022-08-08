Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969547A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659921652;
	h=To:Subject:From:Message-Id:Date;
	bh=YZPhbtXL6elXaHG9Z1/7wVi2KP5t8o2n+A4rzBakng4=;
	b=e1mYz2rYTKuKuhgy7knO9UrYn0Fy9ZxX1Sx8EIkJisZLOYNRs/OsEHpeDbQtAgXu
	ttXkK9RzBcnXLQRmKR1lbKmOqA6wzW9cjqkmJS3iG61OtCu+zKYv+NbGIPsEEurJrmK
	F9Ooax7O4WgrR1GvVjd17knHeGQQKaTQjdXgZfYw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659921652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YZPhbtXL6elXaHG9Z1/7wVi2KP5t8o2n+A4rzBakng4=;
	b=VzXEVeLAT1+E3fxowCBjJi4moDuQ8rLn2yG6A5AHbUZflv5nv+0vgmYfcK0DD5iY
	rHk1GUTMySkHTwettOPSYmlyuaTBCcjO1aPqeQ9ERMb9Edb6kSN7E/oud/IYLddP2B2
	yu0Pn5OlV/LuMZje5/iepPTp4RBRMXH1gas9OrmQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827b0a5b7b-0662b0fb-d608-4288-bfeb-6fc04ea4a25c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df4080ec804c8181f7eed17c5ce30074b4a272fcbb8b3453b6ef0531a6fd1251
Date: Mon, 8 Aug 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659921652
