Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0462D7A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 07:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654844879;
	h=To:Subject:From:Message-Id:Date;
	bh=kpALICHilq8tUgoAwzySfwVWhB7SDmsqkl6e0KuPlxc=;
	b=izJHgXNDUGLzbto98YortRcwdfM1MHwA1xOScpVSQwb5AX/Fbqd9VNqCSAAJDEs4
	AF2I1NpTTU8rnHlhZHrpjWPLgM0Ya9ULE1vwzAc0QrOHzGhL5ed48DNQmWYYsqLnyy+
	NWakKt1Advsmyb/Dzu48XyA1ab0Iiy/UrykFc66E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654844879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kpALICHilq8tUgoAwzySfwVWhB7SDmsqkl6e0KuPlxc=;
	b=gwiygvAddZkormX2K3GJ2kbkWoQWk8wvtvNv96uFy5AD2eGyCqR3FzAqjoJC3/5Q
	/afPU5vzWLvocFhGnPJgzHyTgUShaVL8lbS6hvKkzfQety2EwJRwN68uZuqU0cmTVwk
	pHEkNQcV2sJi68dyM3OZ5xUEbtD8nIf9+3j8jZu4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814c70f1d7-98416b6d-ac1d-4b43-9ffa-4b43c3498511-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71073df800e5dfeacc9f91cf08ee9cf0bea1d6c7a7d970bdcd2e1231600c1ee8
Date: Fri, 10 Jun 2022 07:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654844879
