Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DCF621
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 03:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658807212;
	h=To:Subject:From:Message-Id:Date;
	bh=Djtx+w3wjJKuPNUEJlWbVAT3crAm2ujlvrAqRNyFbG0=;
	b=aUFTO13IWuQEO9n4XwI3pQxLLigtA082bFMk6VYwpVOngaD9psAn7tk4Ew18CwBd
	uFxlOzU+BJYlyI760IyvbycsYEsPugwXZOEaMQGIHp7ixb1t3bYTKj2KQBbnnGxKl0B
	XM5+sXxz/j1f8ysLmLXuHh7lMmK0YjumFjjhn8Yc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658807212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Djtx+w3wjJKuPNUEJlWbVAT3crAm2ujlvrAqRNyFbG0=;
	b=eP2jrlGAf7vPyRm54EH9vb1Dbox/m3PV/mtUqtNhHbPpzoxzKsbixIJiIMTrMSf4
	TQVPIs+5i//UUod8eIBv3rysm55W64mwBViKrjPRP8W446Agw7/SpSEAW9LX6iTlLov
	pFXllZmZEAtYrXC+Hayki3wQYaVgTkKPLfw5a8Y8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182389d5944-e2c5229f-9218-4e7a-8843-bbed199b74ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b95a211f2963fe3d432fa7a10cc5cf7d80e91c11ea72c7049faa655f9d4ef2a
Date: Tue, 26 Jul 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658807212
