Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727697A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647130284;
	h=To:Subject:From:Message-Id:Date;
	bh=PjxOL6d2HMZYnQORH0osQXO/QS9ZrPcD20B7MWrDiHs=;
	b=KgOHGht1PDmQ4Ubr5gWP4lbKxizWs3gEKbelpGl4KnMyexA5K0xTFbx1vovY24YW
	g3igqvfEeDjpF+mIGxW18vsWTXrTK9UQfEm63V9mQus4LrkHHpQZAFhiqEgAHHXKwdn
	ubfSOjKu3kw3xj/4zIz10ysOo0gGgg81Lo0nR8OA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647130284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PjxOL6d2HMZYnQORH0osQXO/QS9ZrPcD20B7MWrDiHs=;
	b=Kw/mXz+86zZ7mgy5XsNYzJWNW/F6X+M0pwG3QxLjI2NSaBbBj45m7Lusr09Ebh0I
	Ql7sGhQpKBi04/uzsaPoh/5e1VCKynK9SB3HNUcbD3E0txgEb6ewhtdeoKfylP0v6Kx
	4QrKXLj1QmQ7JO/P4dFz+K4RumN/snG9EcdX/pLI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f809d92e3-b7bc4ab7-285c-4871-9379-1ecb441122a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c35dd20ad902864e68f60b66223a5b4947a5be0be44b30389d48bcc0a1752be
Date: Sun, 13 Mar 2022 00:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647130284
