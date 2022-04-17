Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDFB368
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 00:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650156238;
	h=To:Subject:From:Message-Id:Date;
	bh=K7hiN42KJ7+kwghLgH9pro225wg8ns7957jeZaYjsas=;
	b=GXoKrvEeL/in8V3ca2iaPMl1Cj56/1eE+dzU2bM4aGWuMzwKFt4i0DE5dTKUCmFG
	JsNIPdVm/E5PXB5igsbK0NESwS6ojotLg/RW3ayopK+DSBMpPogtqzFrxLENCggLK+s
	C6/5BUQSmlm24aBTO5fVQKG6Y8Wica7n1b3hEc6Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650156238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K7hiN42KJ7+kwghLgH9pro225wg8ns7957jeZaYjsas=;
	b=LpJM/R6q3wgjgW1GAQb3lANEZTE5e2z07D4P/Mxo+IuzTSykJ5IWK6a3FOxn72Wg
	AYwBJeedcz3gJJtsJSsuAs0D8cAdGgEr3QIE7FmTJXkuMkl4MJGMBAh7cL/1bWU+tYZ
	g/CPuOccJtmBZsM4dSJzj/XTADZdHlZc6C4pYrzs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018034f9f5db-dea4417e-57a4-46dc-8c66-5fdac688d96e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09525354667cb051e49b1d3b4f4767484a09eab86a927252fa8ce68eab1a27e7
Date: Sun, 17 Apr 2022 00:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650156238
