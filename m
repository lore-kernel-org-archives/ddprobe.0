Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119241FAA
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 02:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652926919;
	h=To:Subject:From:Message-Id:Date;
	bh=IKVyjdtlryOEiwv6nfa726ebd/1I0ebUUadc/cshR/E=;
	b=ZR6dNtFOXXypt86zRRGhhxIay6IPqZZbbR7NIsDGQlt3UMp05Ma2+LNTnGjTMg/d
	Yva4gDRDC38BnE75plAxLKKdYQOtdyGZtkxV6MB0oqHXBKQU67wcQ+P5YFFfaNHspbd
	dFFhsBd67kdQ+VVw1f6d91W6+TjEqxCRTfMCOrh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652926919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IKVyjdtlryOEiwv6nfa726ebd/1I0ebUUadc/cshR/E=;
	b=ENyvmA7krzSjC5TMI5o2dAgdBPZGwIFXXDV46BDsKDGzLaSUz2VLO89OKuQAxUov
	4VTzW7HkCT/iBaKUHstf95KK29inaAsfaYfZLYLnQXiGiJevE+89hDa+fYN+u42gODL
	wxOOpGAuU9iQqeEKkeyY9rTc4a78ztlqX/MBHnV0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180da1f3297-b2afc486-855e-4780-9611-4d1af1922110-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e78337f736331d8052ac413d0469a58363525a34542213a5551b029b71ff8ef
Date: Thu, 19 May 2022 02:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652926919
