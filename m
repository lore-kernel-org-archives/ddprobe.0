Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C857B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 20:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657397812;
	h=To:Subject:From:Message-Id:Date;
	bh=4LOvFiy8iPJowmJ49vqKbdragh2FcFBJB0/BGA8R1I0=;
	b=KjiCpKN3mtuUAenfRlitpJrUKTJiC2EGxmSA19VXgExykxZ6iwJRTN15yl6uB1RU
	yauQcJpCACkfMJ5vVGzQKiNEEMGHb4UOmFGXhX7zQWck5NV7l6jp43xoKLfxkwTwHHr
	+C1on6m7F74qu8433nN70c0IgIPPwPA7I9LfBiAg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657397812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4LOvFiy8iPJowmJ49vqKbdragh2FcFBJB0/BGA8R1I0=;
	b=I9yeRYg36fI7ia6DFlOqzOeE9As+vFGYyXWpSvQaZ13sY9u9wgOyI9IkJLYgmULV
	eGLq5++SkMjVHl414ES7hlTgpb+vqk+SeE8pHW0SyKO2EdclEA4OF/YdLMkTPlcE+OP
	lQZ+pQ7yKYbCpt/wBDi/iFetK2C80vtbmAhZbCnE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e49b9c9a-460e009e-1e93-4b3e-8fa0-115646592474-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c1de9ff134e1e882a5d30370fbbc6e95384cdbfda6634c31c5ae3d5275a6741
Date: Sat, 9 Jul 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657397812
