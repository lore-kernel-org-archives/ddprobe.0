Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9E53C35
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660043452;
	h=To:Subject:From:Message-Id:Date;
	bh=hlr3CCvUd0pjXhWnOKs8iMItDE7yFo0k3mGGaJxPWqw=;
	b=Ho5xG7vOeuA5hCjAsVKCKtRn3ML2ic6JjwetIwcT1WgKuR9Ff6MqBrZ6quc2zDtN
	2vFRbGT/7x0DISILxZbrsPRbgrVbvzuXfHcAycVgF5PajchHzcjT69/JwG2lsc1JFsQ
	p/q08F2R2KfNbgFm7Tdh8jdxH3WUO5dQ6fJ0wUbg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660043452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hlr3CCvUd0pjXhWnOKs8iMItDE7yFo0k3mGGaJxPWqw=;
	b=IKbQ+x+03+EgXzIfTyWzq72TysplvmTOXnCgUr12CmTrmHcLQg+gaItUXqd/DqMf
	7VzPigakJU65OY4bjDcTHEyHjP1nek7lNcSei+MH89RYTu4nMfK1DZEQ3N0p8gRy7oj
	gThSkTV2hcU5XRCGnVBGUM2UJnVdc78fIjXW7Hm4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182824ce095-5711c152-b6d0-43ff-938d-383faefa8e00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c59d86ba4fdf38abba2ba3498ba2eec2cb943f642b161b1606eedf970005764
Date: Tue, 9 Aug 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660043452
