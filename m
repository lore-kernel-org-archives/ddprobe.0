Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A3D7EE
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658883052;
	h=To:Subject:From:Message-Id:Date;
	bh=wg/W3xRcN9xzy4QU+Hx46Z7A5bCtZkHHeHRndI4386U=;
	b=DTli32BycfToDbP5ph5f8JZ63O40pgzveDEZ7B0YBpVqapYdJC9VF3RDWpUH6jS7
	1cm+n22Kj4BhkAnKk35pzxXuu/WEa6zUR3OH7p3AJjCixsesqeuxUB6nznfZ2bdfhno
	YoZW/5qK8DxrhtKW/MfoDZ+AGAaN9dZlMVN057FE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658883052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wg/W3xRcN9xzy4QU+Hx46Z7A5bCtZkHHeHRndI4386U=;
	b=h3Cm4may37HYOkyZUvuhDzKL91WzaDxH31Sgj7+MhjI5EWA8By3Aenh/IE0W4kjK
	68TLPzEZP7pN6guKV+GeFrRoMKpJi9Nkl5GiCN/e/t9VrBq8kBtoNWyetgn7hnEjSdF
	nUm5a9zqH4IUTIEOXHt635U4TqZpLGGbPdNc5oUE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823d229426-850cd877-d91b-429c-97f6-10458f6449d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4afacee6a1d7054325a1d517700a0f55293b5eeab6abb7bf511aea5ec84a8f40
Date: Wed, 27 Jul 2022 00:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658883052
