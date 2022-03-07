Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB2697E
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 17:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646675485;
	h=To:Subject:From:Message-Id:Date;
	bh=R5fieujupuL8G3eQZY0Kdb/Vz++Tin9Y0ZtvtEYopJY=;
	b=MdPqJ7pVNK9sD8FAzGvcG7KZdpUmP2gpc/UaOz+jfWvmJ6nuIWf7dCKarZsh6juu
	sQnTF5SOtxDSRzyvExdSpyu8mZAqCOkOXtkQBX5T9mjuQag40MrAqeOegn6hFwJC9bm
	q+/hbh4kTHXLz6vn3vcXXBD0oIHqaL2tlZjfwAlY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646675485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R5fieujupuL8G3eQZY0Kdb/Vz++Tin9Y0ZtvtEYopJY=;
	b=QDNPVnAfhW5wNKnXD76+yBBm3Ap50MJuh6hL8KnlRTfIkAGPXzhryG2a4Sm3ivlg
	SIo8Aegh1hGL5+dJkHXjiKddTkXE21qVUOLq2sryvelqmdOMub17zzwwwdhZUCJzdS7
	f0OlCZ7OCFbk6E9iwCJWxdCgAs0M3MVQtUoNOIsA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6581e0c6-c9ef68ba-1ff7-4eb8-8295-0edddb1acd41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 935f37365ffefc806c28a27bb19ab1fb9ef97cb40f6695427c8755cad221ab7c
Date: Mon, 7 Mar 2022 17:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646675484
