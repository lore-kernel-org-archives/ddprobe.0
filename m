Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065E07F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 22:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651963378;
	h=To:Subject:From:Message-Id:Date;
	bh=zmAmixLYfSf+NOfZj8ofj/sSqpI+1qeKfZgqlupwPGk=;
	b=aX0EY3j5jclv3c8KF/wfmJ0BQqgiF1prf9kOYez9x9cYxHZJTWYbB+vZhTVNIotp
	yREAXObiX/lqdV5jdNMkBqeHyXMxi7IFsiHz7QNqBHZB9/OynNZ8SlXSUDLrYpvRqYJ
	G6ZOyqnsFxsUuTP2xyxKfln/KwSJ7KPtaRToAPAw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651963378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zmAmixLYfSf+NOfZj8ofj/sSqpI+1qeKfZgqlupwPGk=;
	b=PQjOMLZiQHU5v5hKACAfrCg/gUHH1akd1KULHgOfxCJZ0SUb/A1B81jGuCz0NimD
	3n08V7XVgMuhD10kuS+R43AyiVtu6dWZauYrG/O4qXvXDEW8MzkzJ6Ov8NfBIAUz2mP
	IkA+I7cQCXXCDv+ihWF69N5bDGpNkyYrVlGLL9KY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a0b0ba8b-d562a979-ed82-4967-9d9a-e4df2d621002-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60b56561deb03967997e48580547d4f4ccb10e98f20006f7d30a24a4f5b496cc
Date: Sat, 7 May 2022 22:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651963378
