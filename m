Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EB77E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 05:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658641612;
	h=To:Subject:From:Message-Id:Date;
	bh=i6+SppRBcT3adfEqKPlZZ/m6Luuoz3Skvl04VpPNlN4=;
	b=IS4kige3Bgdj2fUQVgZsuJEcttESOA2tPNqVs15i/i7ijM3VC7vNrEY1jeZu7lab
	nGnEjlobwTw0rvCWx/8H/JAQ0jzVskeQvpwBwUhdnm3q9nNqtjFCir4fNHMrVa5yczh
	xjEWjfJUlFVPBHhLakdByHLaPInKcb31/yrC7qGI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658641612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i6+SppRBcT3adfEqKPlZZ/m6Luuoz3Skvl04VpPNlN4=;
	b=b7eX4Z7MhZF+ko8bNvAAIp0BfVwO7JTe2tr758e1EZnwqg722IyyR+PIJFnSQkpc
	vNdLbHrV/NGGzm4n5kod7QAzYAjtE4llG6grx+Yf1tfkJaGUBW03Sl5jq+Z/Mu1TI24
	c9XALxWBklas9jHA+ZjhdsKoKzP2JMMBJzwMAAKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822ebe7e28-09843862-3c40-4f07-b75a-a782faca7e22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9a127edd6a91d6d57c25a2024054decd1e30df2eb762060620f381882ad0884
Date: Sun, 24 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658641612
