Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381B0257E
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 20:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656016012;
	h=To:Subject:From:Message-Id:Date;
	bh=xQZOwupTyh1RXQN9/Zb6xojLQqhEEmR2iyVsu4fh/4I=;
	b=fVptKTVVIaSErCdDIgt/Bbod8dM1NSkdPBGxjW7hKTlWH9NjC0PgTkUk5iaQ3qvz
	w1VlugEQ7aANXgJwSpvhJ+zVvVmHrXqqIeXTppC+6gR6I00baEiMTMzfKWnLd5/TD13
	Fjd87B7oztagibMEQYmMYIe9xtHxt3wgLX5D/SEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656016012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xQZOwupTyh1RXQN9/Zb6xojLQqhEEmR2iyVsu4fh/4I=;
	b=C+HcA20BbGGwaYmqz4ui2Mg1tKEtEh7D8EGGGn2pp6oT2cCQJnl0m2YgsJGdUN6s
	8kfb76+2MMFCG5sp0ckgMK+AVfW48JuJpS3mrkHT6Kb2Rkw7lVnQtc4/RfKhLN0JvW1
	RVLRGZ/m9Jy06PN7/W3iwoysaKji1zGBqOqVggFg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181923f03e4-aecd7e5d-bb96-423a-9277-820783a200b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d1982c5c5a8693478e41833bad0fe32abb9f5bd2848a9c86be2cbf603e806d8
Date: Thu, 23 Jun 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656016012
