Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E78897B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 01:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655688539;
	h=To:Subject:From:Message-Id:Date;
	bh=0rkJX1wmze5UJi+U+uWp8EFGAJTyPdJ6Al//zB/JE6U=;
	b=XEav+rKfjNf0j6aQ0dbFTjEnsxonHa2/ZncyWKiO+QgNz1FSrbYQemtspXZDe0Gs
	g09STTDf0UTAAwGVPvqugeF5MrACCOtfW9x+oQL4bQ+XSE4Tb11pWNpBqXdPsqhbzeb
	8kxMc6HOYqYI5Mrl29LDvVgBO3LgduG7mJMMqN+8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655688539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0rkJX1wmze5UJi+U+uWp8EFGAJTyPdJ6Al//zB/JE6U=;
	b=CYcWGXnlS+3MsahgHZoE0l4POv6R1oPSA3y9nTOVA3so3j6Ym9XOoc3qbbeFLDwG
	nXZYZ1hrJI9zqp2sUG5WPRVgAsU/SkFTuAC6FJkdZTY4ELedF+LkYhYYOey+18IYBw/
	pI5i+llHw4fGpp5/JHlmlQhfK7VcLpv9tiMa5kDQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817eba2c82-0b3ed77f-bef1-46de-9358-174167c1ba7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c21f50aee353c8c9647c0803119caef22858f03a383182b36549aaeddd96a53
Date: Mon, 20 Jun 2022 01:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655688538
