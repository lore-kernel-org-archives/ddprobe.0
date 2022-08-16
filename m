Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C2110F5
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660617652;
	h=To:Subject:From:Message-Id:Date;
	bh=aAtV6MEqK4CMCbMBmxhlkzLxrp9SPxkUxrfmtnz+h8U=;
	b=cZBfgwVdv53nNp/zLBN6QULgXJApzcRF6Uq49+fXFR9l7Sikv7DTD76UMEk8xBZ3
	yThCBGIsWZ2v2trKqzWbGyyrpyJ8ZJIxEixFVOZ5fuCT5v3znULalvLpv4a2Km4U2Qk
	eZjvoZKIOaCo09xkdsKDb5yuz2AVW4PmiSBGgFKA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660617652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aAtV6MEqK4CMCbMBmxhlkzLxrp9SPxkUxrfmtnz+h8U=;
	b=VVsMkKxc9FKxzxOjzgjopsubsEEbKn2wmPzsPZuSpvm03tSu8w96oOFKEcRnKsxp
	vzcsp/xkVM/m21p9QZMHh3fYK8PnI3S+qZg2ModPr/lA5EPDKZE3uJzYv4DDvwooqvz
	YALfxFLCyuoPMnLksaYmW5FJuA2y1dD8BcEOoX+U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a486795c-0f61458a-c136-43d5-afcc-5bd04a37bbdc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 356912257a52001f643246ed4f9191b98f1afd2bdf96debc2d52cf3cbb85ddae
Date: Tue, 16 Aug 2022 02:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660617652
