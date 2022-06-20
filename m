Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF6E7E6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 08:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655712659;
	h=To:Subject:From:Message-Id:Date;
	bh=ERGQUwg41DCPyLWgA8OysK2glIDqibbSWWvQWPdlYz0=;
	b=itCF3akhcZLwDm/8WSzonY2UXJAvdS9MS8GUSs3zTLoDVzIM+oQOnKNwrh0wOf46
	nj8zGrzwliPRu3CHN+W+wKb9ztQzxxyarxZpUcKEmxlhjmOO7pP1SeN9wK/vKun6hWs
	CanJ458sSrB75zlVpPJomxARzIEARC16zjLl6yJ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655712659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ERGQUwg41DCPyLWgA8OysK2glIDqibbSWWvQWPdlYz0=;
	b=U40/jJ9CnIWkVn073VjqLyonGTZBz/QuOxZstGtJi2WucQGjG1MOs8dJ0+JcllYr
	8rUk3ekcWOIW6i9x9Hy7UdRY0X2WPnW1F6EngcRGLSnHH4iLWY3DDPJd6uaFlLp74HS
	RHSiNWAbsRk/k6wSIp00EmUIicU2W5miU/PL+7Gc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181802a3727-e6512bf7-2e4c-4203-b924-fa65900ef62d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a07353670d5100beb646d261c2dff0d0f56522d530ffbc525ab72a583ea3d4a1
Date: Mon, 20 Jun 2022 08:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655712659
