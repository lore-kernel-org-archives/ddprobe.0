Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BEA15A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659238252;
	h=To:Subject:From:Message-Id:Date;
	bh=t6YrQJNBIlF6mJ/n9kXhX/yXakPmmxSrsgPAB2BDqJM=;
	b=Tigyd0rUIBD4q0RXt/+5EmpM6odE3i58Juzyxj4sNxA8sx4a6DmXWBfD6O1TYAb0
	6jZqc1lauXn+zPHgUUk1mNy1vEBlyFxIo0QcFnaKOIW3CgrUM/EyTdLbuQXv7VljXcY
	9Rd2NwTBMISC+WSgj9blbxFkjRnkpqK2bAcJUoh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659238252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t6YrQJNBIlF6mJ/n9kXhX/yXakPmmxSrsgPAB2BDqJM=;
	b=P7gpr6B2GGuDhmCN/SjgaK6aoWZO9udoXoM2WNCQkkNYPLRl5cJ534foxM/ZF/UE
	bfVqJWlINdU5aO8Pq2dUl8iG+y5ZnKtiU0ND+U4nyhwQ3xmHBB6BW5uSrd7ytan3Ukb
	ayJNb0806xx4eqwmo6tvVh455NoKwUGy4WWLBpgk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182524e802b-cf7b5dae-2ff7-4f16-8df3-8acb1a72da6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e09eedae2bb242a88e3957778dc9371b8559e551933f0d3eb6b658f75c22e88
Date: Sun, 31 Jul 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659238252
