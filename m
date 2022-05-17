Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A42C1847
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 16:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652804879;
	h=To:Subject:From:Message-Id:Date;
	bh=RYRORpUmOWJRWl4mpnnTE8S0pkKD/dp+w94O7rUv1rY=;
	b=gh5Pr5ZqFBsXuLFQwRzK8X0e7Mm+axHcjYsyMO2t8BJbXsSx19nK7mvK44/rcL5f
	AwrkFEpybxY/ypnUHvNaOceSsk6kGgGy4v7Xu1eBfrrbhjeVz9S7z+9wbVVufN+D/z8
	zYJ1YQ6GuiGXg223wzecXTTIFbKppJWeOnKA71po=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652804879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RYRORpUmOWJRWl4mpnnTE8S0pkKD/dp+w94O7rUv1rY=;
	b=E6JSxq0FOjSQw0FkLa/MbOCWtdGVtt3r4BnR4c/TnrLp5gPLdx7KpV102Hed7JUn
	whuxTxPOz6ihSK8ybYByg+YBkpeXQyDCn9i9ESHyXIvc5/zG2u1czu36l2A2kfiFNc9
	FafCjZ55p2p2UXoBNAvXY4M1pdbdVDWBFPJaGd/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d2d903dd-bf5f862c-8f56-4789-ba5d-83c864fd6eda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41de791ac81e55b2ca017f66cc472ed8e5472bb5f7485537487be1b10c89c05c
Date: Tue, 17 May 2022 16:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652804879
