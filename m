Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE4C1386
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 07:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645689384;
	h=To:Subject:From:Message-Id:Date;
	bh=v6E1u9v+j+X0+xVpbg21baxGkrGomwGyC4lMvIuklas=;
	b=RLbc75DrXQLKUw8iCNn/Xh0EMPy0llYU5appQEXcKmzK32SbtyTpqxnlfRdrOZfV
	yrNo0KEkcmaI1CN9Mhjp3tnIvJcpLgaHSheaODd/eVjSDaPHr+5RjQnXvUVzAYn5Bs6
	VVGH5V7vskNqDcOfvUQWzNnegQkW053qdLLkz6vQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645689384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v6E1u9v+j+X0+xVpbg21baxGkrGomwGyC4lMvIuklas=;
	b=kJvLfH8v9qhMON0vi+oZHioCkAUYlclcQlfmgWplfGaiOsDbHCn4V0QGfh5QkIds
	Nfbc3quhFLf+IixMJU/YmA5CV9qp1SINVeBfwo+45iQq4Gel9arbgugfoqCJS50zW2s
	HpM0htXc94tDs9o0aI0egk7U5p1uND5bKp7EjY8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2abb2f41-7652b0a9-7753-48eb-9a79-43ecf029cb3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b9aceea9ababf4af3d0e6d4f031582239828effd0cafff4af820c354d74b524
Date: Thu, 24 Feb 2022 07:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645689384
