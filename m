Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F78B257E
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659177652;
	h=To:Subject:From:Message-Id:Date;
	bh=x73LfiJ2gMTcOhS37C2WV4IeOkxJvtJl9X5wcSiGBr8=;
	b=VKWZOQ2UZL2caHP92G8tZqD+F9t6gZQhF3vOgjcdvQ0d/gfcTiuYMAes4TDMj3XA
	fP/UghGgP+3ZmeFwdV/eA73cnnhAPlyZcYZ0GhM54+RBX1PPEAMHb5bAhVmgb7I+lFE
	m9EhLx3yHMnsl3EAP/d48YKCwUNarGQAW7WWDkoY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659177652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x73LfiJ2gMTcOhS37C2WV4IeOkxJvtJl9X5wcSiGBr8=;
	b=V5E0ellf2OdyiWuY3EnZYbhiXdq8tg0RtF3zWbQ43YCSvlu8YlB72PvVlZgo6pFJ
	kypH2BCRDkyIjKFXrKXaGsESe5FqGsXaw2/g7I7JGL49pvv2HiOx3Yk/4ArElLV1M72
	IjiM2aSdJeTgioQ3cVWRz0wFfLbivpPVFeFV2r38=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824eb1d13d-a140f64c-0927-4686-bc59-fc84ae698ae7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8dbd1ea948f79eb4b987f29433b798901c5811f5d985498b9467eea0b5178809
Date: Sat, 30 Jul 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659177652
