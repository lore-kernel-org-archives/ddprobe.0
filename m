Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8BF2562
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 16:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655741039;
	h=To:Subject:From:Message-Id:Date;
	bh=P1VFPDpZ5F/v7xETmtVu7CUjQNVCtWp7qRTKjVSWH7E=;
	b=ai/RvqA5mqowUIerAeWNQsMKcqppD/bkHUt1JITcYu6lAET4KVm3yoK22pkyo+3/
	E7sdtHcUKGmgzrGGLu/FQX37jt4bGAsP6MaPZFZcWtG53K4zUGStfHKbRnnb+i7YCuO
	iifmlNNnZdSE86nxywK4SLqz+7s5EBp+Ab3RRaHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655741039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P1VFPDpZ5F/v7xETmtVu7CUjQNVCtWp7qRTKjVSWH7E=;
	b=FgiSPk2+b2tKBaQjmlKUlZgsM3VKp1fXEmNK69aHq/n/L7ee4yvozbrXZpYpXJv8
	bqjzwsuf9kn0pHySv0U++x2HdWba/ztr7VOV+ueVbvDrL7kicPzOySaeWt6a8doxgNU
	6/ncXJ3odiqdQ1sbiPikSGJskZFm78V+NXkP3OS8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018181db4282-0b828483-a031-4fb1-afc9-9b3a60890289-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62c4473109f4bd39d7c3abfdad0aa9c8ac4609e069e26449a197541fc953b221
Date: Mon, 20 Jun 2022 16:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655741039
