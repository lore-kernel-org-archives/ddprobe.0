Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCECECE
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 12:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656593812;
	h=To:Subject:From:Message-Id:Date;
	bh=ag8iiETkPDtf2ULeR+xDAjLLXDrFGEZoBkRNvmrtklg=;
	b=QKaYnmAz/JKp2kzV5+rUQfbsyOZT0sc/XnZDoNwpUEear8ZyyjIXCzKiTsDtcJeV
	GVG6CnTOw6bXdL0AOKS3ZC+X953+5Bc+v8Lwv4sZzIy5klKUaxAG+CUSWAr2g0zOIfd
	NPRVjMmLprk7bfC1G/aR3D4bXu9yQjbCJ8ZQtovo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656593812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ag8iiETkPDtf2ULeR+xDAjLLXDrFGEZoBkRNvmrtklg=;
	b=YAgvaBMMq8Rk9qpZupbYSsXJnwRIiZU2VayDQ2W9wsq30lQ6nP47hood+vUOyta1
	FHwPS5Aidyey0lUVFqE2WPXhj3nbyZYYfRfTYsiSYN/QCjGzAKUJ+o1qQNKs88zqnCr
	PNx2gaFBP1pjygb0eWdocssbgCbsA2VfEtAkAS94=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b4af8b90-ab175e53-5838-4aa1-bf28-2abd1b92a5bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b2984c64ab7a70d64d831ad9258684b6aa6082c7a320ad8a6a1be37b8333167
Date: Thu, 30 Jun 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656593812
