Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020E4809
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 11:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649505358;
	h=To:Subject:From:Message-Id:Date;
	bh=A4pOcQZu+GRYdFvhICwYy+EuiBhS2ZswBxNqHEjm880=;
	b=JPPNkURefmfIdHB6biWfUQVbdmnYjlDc6wsUSx9YJaXHNubhgfEl0QblKkhX69po
	A+BI5FfgYgxN4tmg1aWXRU1QBxK4u4spzgKU46KA2J1GAO6SlqE+DFgRgbABPmiFN2h
	OyHjUbiUqDKlr/9s1QdbczQccnLDBnXYGrnN07bk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649505358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A4pOcQZu+GRYdFvhICwYy+EuiBhS2ZswBxNqHEjm880=;
	b=g3zX+YpRxVT6MgrRgOQKXzJqEU9ZqmgF0dnDgAQgVj2U/zCkjC5ZyDsFxJaBng7w
	EGl0IDigkp5XUj3WeBnaiEJLzncRSdQHzYhb4KE1zch+g0hGnvikWJxPgz5yk9/twLw
	u2oqRNaHkJpt3HH0ct1/XnkMOPEjZp9GgMgtat7w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800e2e51af-a7722c58-be15-4b8a-825b-3a9646ecde39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1494637b8d8867c2c3c2a66bbd8d46230be403441f05f00f40e96193ac481437
Date: Sat, 9 Apr 2022 11:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649505358
