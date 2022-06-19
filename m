Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26E57B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 20:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655670179;
	h=To:Subject:From:Message-Id:Date;
	bh=wFk6CF9Pj9QvzIvCEt/1lYXr8XJAcqw/Kh8NcpFJ2xg=;
	b=KXEVlu7QlaTOqkOZCAN6pj4J1R49aGnZkjfl2Xt4MP+zenGdTQh0NXGpyfk151qM
	ghyXYe8/tlOZTnkQoWyFnCFLrrKLqfYWYvyakkOAWq+8nIrQ477+WHVx3Rqy7zsTNiD
	xriKvaUavtXPrSDdc9aJHW2wi8Nh9kndHgZNhQyU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655670179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wFk6CF9Pj9QvzIvCEt/1lYXr8XJAcqw/Kh8NcpFJ2xg=;
	b=jpkM3ioeZz61g0moO6qGxi4RWHpJutvCXOYZZutwYDoO+3zTtzc/FG5qxK+m0Iqe
	Gqt5sDF5uyzfU+hpcB2fAA0S8cwRS/9Pat5+xn/NdXRWs+vLeKeeWkV+0tCwezOrNn3
	c0pujbHD6SdTIoycweEL0kAKx2f/3Sov873wkI8Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817da20592-8fe298d7-2599-4ab3-8acd-af6a95544b90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87942ebb35a7ddc09f014dc7bb7dad3f1a2544faa8d41e4fb888bfa16182ae1c
Date: Sun, 19 Jun 2022 20:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655670179
