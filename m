Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150374681
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 14:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657724212;
	h=To:Subject:From:Message-Id:Date;
	bh=0JEgpYGgPNTabVVsTf8CXOvcXSdL5+jIN6zxErwaJFw=;
	b=NUzWOpk50wIO12VO3E4rWBQdS0IpFWbCkWW+idBjqHMGLm6PN6kt8JmjEZeQnqt8
	ZTsV3eCy2ZE3NV/zEydlsq+2mAFVQh9rC7GWTs8Xw0Txe2St1jlkS3OW0ILiur4ELfL
	cPvn/py8xraJsIlvnh44BjyWWdXdDBmwPmYtm01g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657724212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0JEgpYGgPNTabVVsTf8CXOvcXSdL5+jIN6zxErwaJFw=;
	b=S79lllmDlFu9if7+4ycNPBL2Wc4xOj5APQbM7PgN9pwTIXkdRBB4WFhK6md1fyGf
	57bBFyRJUTdX4/XP1m6fcSRBd9F0WaoH1cIs3vexZBNPz0XBkqYzIIkNPSZcblT2JoY
	HeuaizcGNora5B1ZFO0gtbIAxr2GF6u3FmG8wNs8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f8101464-346f94c1-52a8-4004-a997-af2bf399fa68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b13fec74825fc0d2b4396b4fe0c0dedaa047e47910d4ba20961576e35506c368
Date: Wed, 13 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657724212
