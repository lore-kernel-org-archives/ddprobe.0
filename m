Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90F9023BB
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659946853;
	h=To:Subject:From:Message-Id:Date;
	bh=RGZg54uNVnNaDww0Oi+xdYIVb6Fq9OJ9sfdcMQEoHl0=;
	b=VSKagUGqO4X2rFrNEvetlXpAXwYCsJZyYqYQV8x5XpgMgdzXm+rjkUpz0RkOOfQQ
	5zkE4HJcXQ8l47znlXWBbuczkG6dn4mfR0kbbqL4bBVaZsvcU3UMqlpJUqe4ZQ1yQRV
	BgLsaW8uojqyA/qk/Bg1XaVE/r85wGVj2vSjE2Tc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659946853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RGZg54uNVnNaDww0Oi+xdYIVb6Fq9OJ9sfdcMQEoHl0=;
	b=K+MbMrxJ4Ngp6i5fCFa2Dl0qAo4YZtfylYFt83yZmXPOceoFQ5HxaIfLxPwNRGdi
	oqbenw8v4iuRBIACI2kna5QAojtVBGlsSTZCGa/Str6Xx1MAr3CIsYqJ+gt11B8rfVk
	hjQDsKyDWCZJbQ8JGVVfs4uzGok57uXGTFSDFRHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827c8ae106-0784f574-8a19-4f73-a2e1-65c647126dfb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 661ec115c672f4ee859b009e418e5a865ea5d533df44e6d6f80ac649c88116e2
Date: Mon, 8 Aug 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659946852
