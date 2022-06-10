Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F23362
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 06:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654841039;
	h=To:Subject:From:Message-Id:Date;
	bh=7LJyy2VclrxWt8an+ZTHApgXdMvxkfoFvNMuKzq/Va4=;
	b=RfD4x4xAPIiUwt/DSruVBzhnSUZgMrgVdw7QtETEtvxHEi0IZnCbx8v0vu8TFHVz
	+sdWwNZ7MBMR5mp9UcWDc9K+UAGmnLn/KuXXrvbMm2Z10jafEMywFT5qnV/fVNguGLe
	rCKbrxX+hbzRv4MYYSKOOsWHeMHel0HzU64CGpvA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654841039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7LJyy2VclrxWt8an+ZTHApgXdMvxkfoFvNMuKzq/Va4=;
	b=Fr6lDiN9HoJqyewuRuIz7yWY32akhJPTkyHt3ZD4ZEjaT48DNvKcFPntux7QryIE
	VXotyNk0w43Z/1JUQg6NmxCskzUhKNTjsfVGdazA61T579XCtPUOpE/SaUGiVqJSOsr
	j0VtJQhtRbEUiihyN/ZZLEqk+tAxDqQKvs7auV7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814c3659a1-d3310cfb-0351-4bab-84e4-124a645370cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efff099cdc215c22f45dba73411cd5f11441e4f465b51b708d4fb47e2f5f119a
Date: Fri, 10 Jun 2022 06:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654841039
