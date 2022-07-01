Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC4F10F3
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 03:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656646612;
	h=To:Subject:From:Message-Id:Date;
	bh=LdNd/OdFeOeuJ5B/0/M740TcHoXVS3r4+BpRACv+ak8=;
	b=V4QkBur5zMh5wZDrdDBp0jHOfTc0Lpmnj72gGDUGN81KaU8q3xg/UysjJdcXMpj7
	ix7wq3F8UTqGxcwTkoanNhf9DnXfTiwzhtMfaK8k0zHbv2fA/3BwU/SC5PW1wB2/cJh
	V16IDgS9/WOWzc+bCLzmMwFwYRKeuQme52xSHMYY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656646612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LdNd/OdFeOeuJ5B/0/M740TcHoXVS3r4+BpRACv+ak8=;
	b=k/L9KjWkrx26/0HGB0rC8wVIVY01AcwmQ8o1euLKqDFUCDASTZk0cmu21qiDqWgs
	0q3MxP+lOb58Ky9j2SVVmQX8ErUTyjo20FeUD9qEUpsf/3QH7kZRvrahzmomSpJzdWw
	bENOi6P+C2M+OsVPf8nJpl5wFkb27ivVpe5EeVp0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b7d53522-634b921d-6aaf-402b-b915-cf0ff9662ea4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 725fd4aa79ebfd4bda60857f3ab5750488e3b58304005ff01bed2a7047d3f8d6
Date: Fri, 1 Jul 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656646612
