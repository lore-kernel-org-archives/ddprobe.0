Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6259F2F27
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660933852;
	h=To:Subject:From:Message-Id:Date;
	bh=YPhhl8IUddBJiTxVyglB8wygvWGrOWoAPcDiaOxLYxY=;
	b=jMLHj7Cf4u6lCa65vC2YrBq9T6h/5rZn8/Ttw+cR9zI85SIY8I0Y2o7y+YPHWOEe
	079a1LUad0pw+qzfiCRDO+j6+2KdJVBU5W6RPFC4R9Qy1wTxylJFvxd1XcVVU/MENny
	BG8YF8JP5kluXFeLtQchJk5N1QkF+jAR0BV7/Vhs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660933852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YPhhl8IUddBJiTxVyglB8wygvWGrOWoAPcDiaOxLYxY=;
	b=NzDpYftOWgYO3ZRaiJB1QSxb5ElS2rSH2pQVc4dl34wL820nS8zFLwfYXsMdjbgY
	0TZpaLAd7ctVMeLENCJ5tqaJUDjIpS20LhMMdR/72TNVMmu6MLW/iRsAJccpNh+Qlh3
	ieoCITNCHKZPWNkKohMAlClbF1mzh8804DbHCbss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b75f4dc0-23806ed4-deaf-4cf8-ab16-b34f889a6c24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4a96727dc9c0d20b9d91e87beb6e480941ca31b9917edac1f7a1b8a24009726
Date: Fri, 19 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660933852
