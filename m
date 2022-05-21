Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087A2192
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 01:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653095219;
	h=To:Subject:From:Message-Id:Date;
	bh=iKYb6Lh1plIj7eqBpdvOrNBcWzzHlpwYRgy4UlYlw2U=;
	b=k+VNWSIpK/yxzssTDMDFob1TeM1zKMjkdhUSx3HgQ7IAii1EwArfadvmSN3UhIq4
	WymtwohEl5bdIU6KnusPTNUQ5JAFO2AFrJpZMScmmZ//DOwORbLjKloMqDY1JoPZsih
	vKFK9GxDqQkt4/SWfCk2MPdF7hH6urUIYOVneIbw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653095219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iKYb6Lh1plIj7eqBpdvOrNBcWzzHlpwYRgy4UlYlw2U=;
	b=jDv03Gq6QgKd32cKyM5dy8dvEALMLTvux7EhxEjvHJmJhwKYAaXd7c0u3POtfpjF
	xwqGowyaDb7BsVgQmuDms+Mm9JPIK0dpb49mMoQvnFVdi9t/TwziMuWHvTP+GYfza7I
	mydoJK4aP9DtPNGMvAYLj9BXFCPTJHxoDJoEwc38=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e4274036-87422558-4b4e-42b9-8b24-b4225df2bdd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2636fffdfc10ecf31bd85c7fcfb7659169e8fa9560d4bdd746c1d1d58ccb9d2f
Date: Sat, 21 May 2022 01:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653095219
