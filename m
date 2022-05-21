Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B5E17C1
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 03:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653104699;
	h=To:Subject:From:Message-Id:Date;
	bh=MP2z+iutaC7JsaG7sFij8nyinyMY+ne7MdkzvOw3L8Y=;
	b=XkyvPaVTaimYJyA98XxI1fNlVtVW9SUvfSPSd6MPCsCh/qbkVyOwJFn/fLXdDSFM
	4xO3z++T6omXz0IW9jUdNvynw5BqlPdXOyyWlDiJtFj7AlkaFSE7AWSssLxjMt2XXBN
	dZJnPw17yvNA2IrBxqR8r44E+3s6Hyk1nLWxbgOg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653104699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MP2z+iutaC7JsaG7sFij8nyinyMY+ne7MdkzvOw3L8Y=;
	b=B1DDyqUkDOE42ZPhxFJlhRlj4NrrZPCOEyQ48xoe5NA/VogH/NW0bLy+X/9srfib
	zNb7jKnO8TWd2tky4SQAb+0zcg3rhN28Ag/inKYw3n5DtqGc7z3cYfGqaqNX40btN4n
	SLCm0YUQmeqb+J4zUgsbGJtJa33kNHnpGreQYPJ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e4b7e84c-c7a5e535-a724-4e64-b6e7-09ff3557e6a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 841ecdb5ce281a4c1befb7051da5e60e8a7ea7aa62cd9b34ab3ffdeb186722b3
Date: Sat, 21 May 2022 03:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653104699
