Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A812A4A15
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660246253;
	h=To:Subject:From:Message-Id:Date;
	bh=krR3KHDjAYQQIv7yvZb5Hc6Nf+8BXEYasadffKC/wOU=;
	b=F4/nAO2y5QRG4UHtZ4PZ6o5aglOwG4hbP+L4w2X2sGgxaSKwAZu+3aIla2apX2RD
	SN7d0fntsPgGbwPkjcQeZaEZic8bDg3Sp7SS7RF3MqC25YS6unRiOC89Pzhz3C7YU7Y
	7/lxeVud/VEmjhe1gQgU9GFtXGxWszMgSw+RUfDk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660246253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=krR3KHDjAYQQIv7yvZb5Hc6Nf+8BXEYasadffKC/wOU=;
	b=jAU4Ov1XdxHo4h7foErNSWhDCy2JrfLtoud/fmTUvU0AuiQimtgrnskLwGKG4Ucd
	+hljE9gT9BZ7eDTpOT55GYmzkK/e/1NkPHgxNzP/fYCJj6SKX9Z9cDX0PW0vDluKKlD
	GU5sogpA8GamQlX+Z0kYGWCNuViahONRClXZDOb0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828e635ca0-0639268e-1d4e-4acf-80bf-456ffca53e51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85d334664988668e5c6cc58ee3c92d61fc9dc302f2125c729cb763eb899323a3
Date: Thu, 11 Aug 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660246252
