Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC6764F
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 04:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654921679;
	h=To:Subject:From:Message-Id:Date;
	bh=OSzeYzSaJLh1DfcHaMQiIJO7PGmOBP65jMm58JNx6qw=;
	b=aF5uWMDI05fxY9KJZ4iWJZyIhmU3yNaJqklxceSHj5tbJUVMRkbg+SrnWSn/+BW1
	T8jilouQVJFJfcCjGWE9hJzHduEGdUl77vuhkQG3opEbmdpcH7lsofeAesU+Uid9If0
	x9SKSDLltEaSspwD/c0SPvevPFAVKGSdolrLfS0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654921679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OSzeYzSaJLh1DfcHaMQiIJO7PGmOBP65jMm58JNx6qw=;
	b=cMzDLizNkwYFZoiKHZMciAyxiWt8Shbs57ep4wgccUDnOK9h30juPuv3lYdCr394
	3O9ZU7M52zOvLNsiux/ksVfpOP6WOFwx9+8ckwHr5rmhTvpTlQei6/gac1sm7lrmyWG
	G8HI/qScjnJC7aci/ghwjXp0exxHyaWYqdiQGvws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815104d1b3-a0661540-1682-4424-8b47-600069844995-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 828167905bef8420c0d83f142fde157eb24db735c1f38a99acc5ed9fbc5d7f3a
Date: Sat, 11 Jun 2022 04:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654921679
