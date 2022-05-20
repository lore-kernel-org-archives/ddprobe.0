Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72062F4A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 18:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653070679;
	h=To:Subject:From:Message-Id:Date;
	bh=cym1ErcePN8QI0wnJg27aEQ7lLEglJWUOVKWYiE411c=;
	b=RifBlJ+Efuxi770UxTxAjj0BdarShPv3eGbr2JLb/3XsjttYOwwOE25x1Mz4AcND
	8vv5SCjk8oWtDkZdxWirtlEYSTLS780s4dwQkWdZ1AveBEA34Ra+0GNGLL5DwsAAb1i
	kaB/kRWqKhOGaFkPLcBDCRavbAYAxZjwpai8r4to=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653070679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cym1ErcePN8QI0wnJg27aEQ7lLEglJWUOVKWYiE411c=;
	b=OQKxAeRJFK/Li9vcZcjBIydyAguQx0NV6X6y9zDyxC3rXxMG1lgBAj94JJhCA9gT
	0lNE1dxHgHgFkQm3oDD+6TzfQxKEF1dnxYJFtY47nNy7Qntxzh8eIsILVK9eE53M2cV
	H2L2Ydq0go18Ju/IE8DyNMv39XW2gBQ8hKlCFZQQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e2b0ccf9-a511d296-95d8-40e9-8e8d-45e41a380330-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6dc7e714021e0afde2b5d1f945234b29e6f66196712e174ab32f1cd6bc1ef7f
Date: Fri, 20 May 2022 18:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653070679
