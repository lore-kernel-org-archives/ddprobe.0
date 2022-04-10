Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70A31843
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 23:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649632198;
	h=To:Subject:From:Message-Id:Date;
	bh=rPo4zYKubg60NSLniiKs8r48HknA0mvc0o2XYtHuiWg=;
	b=IlCeKgEVWv9Dqjt3HcRFtnEpPuv0nLxBYAVzgrGqboRLir+CxfYra/ut2FomIsn6
	3t1n39REGAfBvYIrUP0l6CDyPseI4W14ByIrhZDghHtsMPeUUOBEhgm0m212WFx/3ky
	lMWQ2wsK+pB0fenLOnM/+ZRtzF/dxknwkkzRpCds=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649632198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rPo4zYKubg60NSLniiKs8r48HknA0mvc0o2XYtHuiWg=;
	b=cskm6LevnW33v5ZdGe+ec5nneHrWJvLHn5HZ0Mcol7waz9OgTVyxg2co5Z86yL2I
	KTcTUIlpBnEu7+RduHk8v0BkQEne3MKKpkdFpyJ+cTodF6YFJnwSEaqtux4/9M05PI0
	NpgAx+S5OMUSya811G5VW/jx9uq2OeF3t7l6Fnds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018015bdbe70-df260589-4d0c-4dd2-b6a7-65cb7eb951fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c1913820a1cfdb80cb650e97c3f4a2d5f39c72a88e9afcbf20929adf3ec4c80
Date: Sun, 10 Apr 2022 23:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649632198
