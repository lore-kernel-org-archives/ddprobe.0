Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D910146A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 14:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656943612;
	h=To:Subject:From:Message-Id:Date;
	bh=+qV/MaB8J8CxXjR4b6pWihYRWIeOrkLoCrhX4ViW7do=;
	b=br3H603Doo8iFn+/aOr4WWu0YxOzWD2K3cKt/0X0F0PkqUI6bUUF4FMYak6PIIXi
	PCba9fTi3cbSAIDkrfOqXhsvCJ9lT1Rx5wziwiwqiBwQLOF8l6l6VBvnPn8Yq/hN942
	h/hMAo7L7PQwNqfMpCSelFJfUNv8lDqwYNt3O0o8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656943612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+qV/MaB8J8CxXjR4b6pWihYRWIeOrkLoCrhX4ViW7do=;
	b=fDcdLBXVTmiOlqWSIDaYgdzPSMNd1RqnfUiDr1O1U+mtQUB5FC5JVitc5HmBNwQQ
	QrLvUkspEewVjcmmAjr2a4LhAmllrCkChGKGgvYo2oGhm/HSdtlMpMhPK0LsQul22t3
	LnPLNS3GwXnP4299lOdoIqmSXGbs1suL6a+DNC+s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c989115a-975496a2-6ee7-45db-881b-4ef2930d4154-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79e6ad31e8a509e629a7d9776490996a5a8fd0b0069df0b387b5a96b858cf407
Date: Mon, 4 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656943612
