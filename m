Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDA42F42
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 20:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652216279;
	h=To:Subject:From:Message-Id:Date;
	bh=xmKxQ/RODAbCtR3admfiddkwMz+BDl1Hj7A6sI0SgTk=;
	b=mtknTphDhxna/h3+4Fy452T/4p0aSGBCWDqoAdE7ZvGfhsjQ9xQ1sRHr4q9jP9Sx
	E4pa538FCE/q5HyoyxefEq4pCp692WfgEKE1HF/Y7kVxDFKfI57xMUcp0BqaFeHw7dO
	DTHD4VGR+LlLmVJtImUgkt+ed3/WGwIXfeG5xuPc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652216279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xmKxQ/RODAbCtR3admfiddkwMz+BDl1Hj7A6sI0SgTk=;
	b=aAAmU9S45QUtaMSC6rwOGTyvk7248fSPpBCzdtHt68k+pbCwgscjajP0tYJoLcKr
	nAsdVp03wXTO8yxK8xblGV63VTI8G49MUuZ7/7E4nb/ecs4/QrSdTkjuFfpBWFMupyQ
	nAWZC85RWL/bFs+QX7/c05efe0kvkxd6NaEms9P4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180afc3b0f3-e87262a5-f66c-447d-a3f9-30ca2184c98b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56a8762a66266599905d36d11843c2cb799ec15d8170a18e4066a5f78a30f658
Date: Tue, 10 May 2022 20:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652216279
