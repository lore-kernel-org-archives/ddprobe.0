Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E457937A
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660293653;
	h=To:Subject:From:Message-Id:Date;
	bh=cwXCRfKtcP5kk4JR3WXGu9eLFb0dK/Np/hjoIMdkM6A=;
	b=Uj/mUohG3h2+2C+t6lkiiePxLdOo3yDux3o3N0iT7DemqoEWzKIjUDrPvYlxqUpk
	7PFuJuvvWTA1dZBYaNiFwD7hLQzDsugXOCMKcyMS2SAkXIK79EP6jsUK5q2cI8OroKi
	9VBVKdT07xrxzYiSvLjTtFN4MTNrr3fp3rsYzeGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660293653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cwXCRfKtcP5kk4JR3WXGu9eLFb0dK/Np/hjoIMdkM6A=;
	b=QZcsy5XfUXfWhgHtva4fNma0yO4EY4cbe8BIlqJDvwoHdxIBrkQwXo1l5vVJZabD
	Kzg8BU1hkXwDr19GNcIqEbLYGsZyFxC/9xaAEybtykxLJaHjw9egPItNb0VLLZOK2ml
	AOoT6kGMIthcDu9CEg6uHw6mx4pAAarWosr03Y7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829136a063-4ead1c41-b5c0-49eb-b921-5e0d6070a655-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca8ec96817c1968f5435ad31629a140647ad1e421f66694edd28b556b9a48f8c
Date: Fri, 12 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660293652
