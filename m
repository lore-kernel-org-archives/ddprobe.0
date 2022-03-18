Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB8315A8
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647607884;
	h=To:Subject:From:Message-Id:Date;
	bh=h7vODBINt5FWH+tbIr8cmTuU8U2aJZg+X4IK6Rsy3GI=;
	b=kqaU6sdPgRAE4S5+voIBpGZA6koTXtJq1MWip+UgNajaLxFvnUgtNoyFJhYQJf2J
	nhvJgHrVDpCuZLJ4rWe3oxQoQVUbJR5qahNF4X6K7zPFrOV1PsS8S1WrLJPSKEJAL/v
	oXCvMZB+9KvLIXQNYtuM1xVaUa53+3tvYLDCZpqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647607884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h7vODBINt5FWH+tbIr8cmTuU8U2aJZg+X4IK6Rsy3GI=;
	b=HLJMnnv00UCBZDGJlBfq+tL7kZuf+qQhN8BwHsetwS+sDDDgMhHKvWXunYRKJMmF
	dYDka9x14FFUxFVUMSho5ldO8jwbYIwCCDPIrgvgxL5gAim9kOp4ctGhWIxYp4dexCh
	upAv8m+6eQVRZSQnW9zITLqI8Fh5Zc8df7i9QSiE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d152baf-7d5cb9bc-39ae-476d-a330-b0fe2c03e194-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f72724958d517484e880fa59278c502ab46d1746164b4e04a5d48a8c2c1a74b9
Date: Fri, 18 Mar 2022 12:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647607884
