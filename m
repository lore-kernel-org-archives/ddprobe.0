Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5443E1869
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659792652;
	h=To:Subject:From:Message-Id:Date;
	bh=FPWQcGnBDgRS2E9RFkXX9UrfWwmgSK7sm4de0iy5hjs=;
	b=GBwczAmU8CnsqLxRez9B5LNrzk4Jd3GuUGRZgiOvqOc1MsdpoEjkLc7qO7HSa3/H
	qgUsKtJctYwJ35qlcMfuXLAdg4EGygdPeHQK91EE0f5zuhBacu60VBuTeiKsDiwo1v1
	9OoZy5ual5bGgizqGBuAOmaFntPgjHsvLt81QbEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659792652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FPWQcGnBDgRS2E9RFkXX9UrfWwmgSK7sm4de0iy5hjs=;
	b=ZSfxnSScCtDQ2sIeWC7FGVG+Lh5ygvo+qwUKOim4N8L0tAFWK9AHz0PsF+0czYIk
	gdSFrlxDu6DT2UemWui2K/ps9yW2jQIEoT25CPHljqO06RPpI02jL9EdRhUbHZvnNyw
	kxAvBZ0aRDvDnFBuncwgJGDDWfrTf87cUAjlgJXM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827359f90e-34c0cce5-2db3-4cae-8d64-346f3401c126-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47accfb4770911b6bda7195df602113feb2362c12df8b8d6ce094c0ae718bf45
Date: Sat, 6 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659792652
