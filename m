Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D1A2566
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 12:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651667278;
	h=To:Subject:From:Message-Id:Date;
	bh=McL/7Kt18Yl6JfeBWetkR80pJwVBe8KNAke1Z0yLmj4=;
	b=gNglFs0st4PG46LQEhvKPYpGREo/k8hcY5a0qt5OKi5z2a5RkgG4silkg7NepsIb
	i0txkA/nWORig5OB9yNeZ/ThUh6fMYkKy7RrK+vshwJU61jUHDosKzzujWHjc2AG4EH
	xdhmhTZKmEV/w7eXwDukbJdqc/gJFkplfRNtKaY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651667278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=McL/7Kt18Yl6JfeBWetkR80pJwVBe8KNAke1Z0yLmj4=;
	b=UWPe+UUvLLOs3dJUeo5UNi6e6/AlHX9J7+KgD9CpfrYpOSWb3HHDn6JSgER27PB5
	MyG/hKTNYim9+C95dIRMk2hVnJn7pfmtTXM3FngHpWBqDF2gHl1HXzfYjUK02MmlSP4
	73A4EzQIiJDJuPVY3jEOoK00A8PAI53ar2R+Uo94=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808f0a999f-1db3d466-469e-4253-8c4a-00477662c77c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1c9b945df72ed6adfb6a612ea0b2f96fe082f8e7ce6f5825ae7f9602055f2d7
Date: Wed, 4 May 2022 12:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651667278
