Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A6B17EF
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 02:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657075612;
	h=To:Subject:From:Message-Id:Date;
	bh=ocO6f6P3BP5tpelO/L//UHgniKGKcPztLi8HR0+cd88=;
	b=FcqpyggAOTTGCUsRehXpsz03ASSEMpwrnDkm9HLqe6LFjZiR7a3BtG7XuVCS3B/n
	ABks8c5AzTCeXvbqfMOPxIuKYIPR8AJA/c2mt+swCerpjXONxs9yE3JsIPxP/YFUpAR
	ALDu5AQl4OhMvsVJFKTWqgC/YtmT+UiJV0/52IBU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657075612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ocO6f6P3BP5tpelO/L//UHgniKGKcPztLi8HR0+cd88=;
	b=Aad6lepAH17GIiwdIfUMSs9NOYdAXJuww5P2KOhBcFHGI161Lqga2It7huk3Mmsg
	AHZWez7X+7KX6y+yGU6MhEDOjf7Gx+tOf53V5yjEPWRthfZk7rFYzrN5IsE0TnI+3rz
	yHTUpOySs8H1ew2fNdWwvdW8UR/yL40gv1Hr/yOc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d1673a6b-6ee20f60-e1e2-4b25-94ca-afba1da89a3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: beaf2eea0df1e1deda398b612dc8bfbb585fad724e932df0f45cbd55769de1fe
Date: Wed, 6 Jul 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657075612
