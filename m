Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147B77A
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 16:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650732418;
	h=To:Subject:From:Message-Id:Date;
	bh=WK90kg3SpO5NMST90Txq9gC0tDmIF2GCnu21iV+cMrM=;
	b=F1OaG1ws3BWbLOS3Xm5nBQdBx/l8hPYVFiGzjJCpjvGkiLmMtEVxUhLbBAF151xY
	agbOP4uPwO/5SlmFmLDNCBSxrf+9vx4Ijt4+sud2b9C152owlGh7IX7fxgfHJ+AxfWs
	JP6Rl9EtwqqKSc4UolYo/KRobS/skpA7WrxBQtA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650732418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WK90kg3SpO5NMST90Txq9gC0tDmIF2GCnu21iV+cMrM=;
	b=cZvzR6QvlYLGQIl2gZcs5jsDaxsIyP5h+0hPTyhgNBN6Lw9FJ7GDs1K/Hsad5n5E
	qv3f+/7IeabvJNsP+0+p8O8xYzhPdziV0Mm9jyJirx47rWRSPRbZsE2ruV9n15njmw9
	udzArjXde4iRrkxwUh/Q0V3aOebCb4dvf1rETc/A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805751c4d2-952dd32f-9769-4243-9321-ddc856840b72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1e70d9877b4be3d0a1386593d08309ed9374fabf820e6aba0c59e644472a29f
Date: Sat, 23 Apr 2022 16:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650732418
