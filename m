Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA3D15A9
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 04:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653022799;
	h=To:Subject:From:Message-Id:Date;
	bh=Zsi7XU0wy2uC34xXvMOd0faQVOK4/Qzpc9Z/f2T3Tm0=;
	b=JkYKk9QR2VS9wQrLjOPBwziOvuKpZIbzxpTBQ6Y31keonyYExpue6khjbLJvGx3q
	mVHzfJcL3NrK7QEicxEs1/eQwXKyl8JLcycMjDDOhgrzu4lc4Z7wwuTgA29QEBM3NUJ
	Ran4TQjsfsnNS/qedPgxoRpLu7DOWfn4DY6Hsx7U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653022799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zsi7XU0wy2uC34xXvMOd0faQVOK4/Qzpc9Z/f2T3Tm0=;
	b=KJaXzI4VeMGVd+vKgO0paS+8F6QZ+B1i+MyF34eUpDN3cAnVUazih5hRU+dGrotu
	rwo2ZuMyroQRhmtC7ij/fvMxbRsnwdz3AF0pLtZwNBMpo9S8FzRdvp53obo5QnPso06
	rj5bjLOdxeFBGIC7gtdEEQXaoKqKTQFsikoL3nHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dfd635b4-f4b30a7c-4d02-4935-a174-c22da4cb1bcd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64c7eeb14fd86672560d80edee99445061bf12169f44f4e7180fcdc933c31278
Date: Fri, 20 May 2022 04:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653022799
