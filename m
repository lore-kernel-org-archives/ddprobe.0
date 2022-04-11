Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4C41840
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 18:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649702638;
	h=To:Subject:From:Message-Id:Date;
	bh=JskDgsi/IiAe9UVK20kjDYyREB1OBCDcj0KGvQPDX2k=;
	b=Rf1RMs5SPqRjw9/lYR+k32OciZQE0/WEULx4bb0aEYWjQHto8CEIaOQr02cPuXYy
	3++IjaI/EAH6dPBDhG4EXXWnZ9CKedaAgZQO8Qa6iOYGENneENXj0csC17CXnNCfM0R
	JFiGKvMSLpUWHAkMvOfI4j0bO8MqiLjEtZCPkjDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649702638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JskDgsi/IiAe9UVK20kjDYyREB1OBCDcj0KGvQPDX2k=;
	b=ACqKifr1DH6h/ke2ogdFErcJkYWcJVmPc3Lhq9eYZtVRbioWpenvmv1zIx4lSgCi
	g/puvP4nKgk9q9RZGNeiG9KjHADq5jSO52qBp+WPIMW19Er8EWILtI45gZSv9T6DuqP
	6DyFmG0kGR8lsqq9aZifoXNEV21lmfvMLF/l7ODQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018019f092a7-a59869fc-e634-4770-9e3b-6762b0d4eb9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e23815121634427e81cba0c07bb6f8705759c530e4a57bb80a5e70e2ea15cd6e
Date: Mon, 11 Apr 2022 18:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649702638
