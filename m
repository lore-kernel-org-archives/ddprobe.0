Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0BC2FAE
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 22:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648419118;
	h=To:Subject:From:Message-Id:Date;
	bh=CSl0yusjHg+jLbKiN3zUPurztgl+k0sB1PE/5Q5Dgyk=;
	b=ViuQ+7+7aG7x0bWxlPuUU4nJKRGeqFrmRJQVa9YdGF7YZr1WeaU4pDgwKcGsU4jT
	9Ci+9S8e0dhoueInBVcUgRV01k+JyvgCqON+Ogl4rErmXMQ7UI12TCXpXro9ml6ArjO
	hlhq8zlLBCdVjZzYmfjb+sUPlhHEb7vBlaJSxKnE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648419118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CSl0yusjHg+jLbKiN3zUPurztgl+k0sB1PE/5Q5Dgyk=;
	b=hp/cJUUIP9VxaV9v642iR161WO2piSJP+agk8tWRqRNl4SEgkTHGXyzWKOLb2Jko
	srzcvXoqlPYE5xUMLEwPFGmZXALC4dL6Bc4LYnt+W/oI/ASwowOPF2ylRGmh3hrpWgF
	WHHBBCDRXXXa47SkvAeo97GRnufYuOtxMPfuGqEU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcd6f9cb6-fe5c7535-64e5-4ba7-b484-823e981bd020-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4a8b2ec3c9966d3bdf0f71c0bb49f09cf7e2eb7fffbe43ea897bda30cfd0321
Date: Sun, 27 Mar 2022 22:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648419118
