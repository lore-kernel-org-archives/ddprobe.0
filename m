Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60A72917
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 19:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657051012;
	h=To:Subject:From:Message-Id:Date;
	bh=g3zGT1yWuHAFFf1aUxdPDFTAeC6fobHlvhnI+zSchl8=;
	b=Dn4ngonvdrp1C1Gv+Hcb5Yn+gLbOAMh5zon5vHZr4jxkdAHRWioY2rDNHJPs9I6Q
	Thhg4ErXJtWEJaUrA+bR3wfu3bJSN/JS6eVtvsNdXfWUUGdPfjaES2IBPWpUljl/hDe
	jU+O3+bD8PE7aG0B/oBUoDYktBP/u3D+fUCm+nL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657051012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g3zGT1yWuHAFFf1aUxdPDFTAeC6fobHlvhnI+zSchl8=;
	b=cNazIbL1BD4HJ9s99huAymqO+BiPENj++HRT0dI6IPbI+hJgVbr5av+hHudFQQQx
	KwqDVqPUgmAC4TMyh/QWB5HS+XSmUqJpK9S5mCGv1+kgIwOkPu/sFvQnjJLdV4NgwTc
	KI2JoA9f1TG7/Bfc1raDWetIvKFuxloeWR0d4beM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cfefdc84-d1aefa7d-373c-493e-8d37-102bc5c858af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ceae7c4a4d0233e1c47a9ecbecbc7289cfeedc5ba5e9eab2b438ed9e753caaa6
Date: Tue, 5 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657051012
