Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2E43D86
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 21:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654551959;
	h=To:Subject:From:Message-Id:Date;
	bh=tU0fHQNNXlC9HRaqUOf0lNXriLa6QyMANtIS+ZVOZ1o=;
	b=G/arjY+OwSrn535FgtSQUjA8AdKckbbuCPYrGuxWd5KZnrfPfIPJ3+HInjexQROi
	ZvwKH2/HWXfn/MC38y3B4jS7n/K2RYkySdXjsLMCfx66FbB+AnpdV5sbPatJtol98M1
	RaBMB6yKV2AhCGvJBH8dPMX2ZmAUvCyjFvja7I9o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654551959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tU0fHQNNXlC9HRaqUOf0lNXriLa6QyMANtIS+ZVOZ1o=;
	b=SfLPT/orFev/HxvijDlj4r8oCAYHoLRNP2QyyE7gwIpRcHyBOS74zF2VSgZBT+SM
	6yGoapf72fBcJyAujkuPQJ91YNFzAimCOrkb3pFsZC1VeLRif8fhQfDz4AyiNtZ0XA8
	cvWNyo0QkC3coIIXq74Fqy1lfdwYNc++n1R6fnRI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813afb572d-a0d27a79-7a15-4aea-83cd-3daa0d1a6ae9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a21540ffdb41bd6f1b59161f595fc0c4b15b0d527265e0bd5c730e871847ff67
Date: Mon, 6 Jun 2022 21:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654551959
