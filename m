Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A03A328EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659958253;
	h=To:Subject:From:Message-Id:Date;
	bh=GExjOsE6i8Ifjwf9jQU+F6khj5AApi31FzTYEpMHHFQ=;
	b=SzgUdCD9Qu1Sv6uauWPCk3PXlwW3EhS1Hak0TH5buM51qZPtmqJIVqaklOY2ba6Q
	xbBiiocQdZfgrVehTGR8qKHzEQSw48HWfX3tmWcr9UQ33601fwO8fKvQmaYrdXLrLGW
	KLuEfgCFx52m72tFjz4EweZcNXWumY3AKGobcoOo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659958253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GExjOsE6i8Ifjwf9jQU+F6khj5AApi31FzTYEpMHHFQ=;
	b=dodFBobpJAXLk/W9Z9pUUGC6KO82o/JqsH1IdC9u+XtCS8ufDb9+0NKF88biDXwc
	Ys0WwrYV0pMySPQTSEFPDZ92gUEbzfY6CyD3o/PYpUOYx1C7pb+GzkuXY28B4PsER0Z
	zfh8/Wex4rEwgbmE1x42Kr46CxDP2zKU3iJ31fcY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827d38d43b-825c8c27-e365-4436-996e-1d0c86b27ad9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f42787f1bca1eaa977e373d63bb0c92c28be1420447140b7b994bc86573a7944
Date: Mon, 8 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659958252
