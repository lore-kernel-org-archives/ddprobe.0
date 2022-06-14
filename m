Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA81F1FC1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 20:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655237999;
	h=To:Subject:From:Message-Id:Date;
	bh=9NlSlW18AqbWxSPJR/XVcKpkKeV6CZNxArWjkLTFNiI=;
	b=ENcijTFPKLJr85nwMJmgb2fN0edXgdwt2hEK8g61h7j5zgOiIR/ay3+xDRdpAgKA
	h6fBwwsjZ+Y1KFddSL/zWwfNw/Cev0G04GRKCpStfea50Tdmp6ZIuCRNpDZ0XDgR8/E
	HZ5TczLVNYqibmyhXbfwJjKf4qLtkuhPC8GDteKA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655237999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9NlSlW18AqbWxSPJR/XVcKpkKeV6CZNxArWjkLTFNiI=;
	b=Op2z+0pQ4uG2Kx1jqsyNcR1H8xFdTCkj0RQWZq8X2tgsOc2Qw2n1JbEYKAAg1cA7
	7OZJgtkDi5gpBXSKmcstqS4YRZrn4bUhnFhe8pQSlSNhcGerjVFAl17D/p90Mi/iZUd
	3V/pPxSX6mpm/4ljV9e5gBeevVg57mcix6grZsuA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018163df7a75-f834f16e-a534-40ca-aaef-a0a57b68eb1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 310c7b7e435429246ca3ffdd2ce8454c4a6345746ce9ec54f703db57d176c6f3
Date: Tue, 14 Jun 2022 20:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655237999
