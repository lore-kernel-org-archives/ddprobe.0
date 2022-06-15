Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8148E7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 16:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655310599;
	h=To:Subject:From:Message-Id:Date;
	bh=gwq6Jk+IU378M+rF+p90S/AgRuWpjB8XLwgSoRe/Syw=;
	b=NF8sUalOa4EEo8FC+95dhSYJhKjKjfondzCffAWIMHYCdUKl0vsIrf5N/RdeZ+EG
	qQZTTJaqWvACozcFs1XNjFBvm21mdm7QP57f0Atf01VHvpWGti4N5vJijEf8zSoPDlt
	Hqosoha0ZDuVqb5QbpjLOcOx2ZUn+TJi/bSKjOIY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655310599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gwq6Jk+IU378M+rF+p90S/AgRuWpjB8XLwgSoRe/Syw=;
	b=T8cQ2nF4Mzd85a4wGTglhGMzbkPCdH0oh3t9PUUw/IvD55cO76QweXP8XcZBx9+s
	hSPJb3L5CND13jwdk06VXkLtnPPhzc/gLJ3UPEfTajvDmQOKr9nDYocfFBGnbd2tVvm
	0HWDLVh1UzMaws9Lune1TVE47cNYHUEGcBk2GMng=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816833444e-ec5631c3-740b-4be2-a0da-9696dddca9d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7040fea62c1ecb1aa6b9a1404919b3fc339ecc22080de4c83ad77bf3c9125e9
Date: Wed, 15 Jun 2022 16:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655310599
