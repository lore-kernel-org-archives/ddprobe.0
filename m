Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299B42577
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 22:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652741820;
	h=To:Subject:From:Message-Id:Date;
	bh=W4FjPiwwkQPS56p1tu4cg33JweEJOMConPTRikgqo4M=;
	b=iRSS3+7LUcqNNBOELKi3GkcbXQ2k7qJAKZEQA5BIUL/mSR1bzXYq/noQ79TuhtIx
	DF39jSmykGbNguLVHi+JvXI1Tc8sZ0GbtUha94GOzWAX5MlFLRJhscoxeIajnRYQQ1P
	97MprSfjk47aRnuywu7hdVCTtVn0OFA2XMrSwmyY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652741820;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W4FjPiwwkQPS56p1tu4cg33JweEJOMConPTRikgqo4M=;
	b=KeoBmBKSb0HFkljZZ08z9ysAq+ILnFw7I+WILDL4BaRkkiMcO/3GiIdFMVw+ZGBv
	4bvLIcyowHvhX3lM8wSqmOdnZoTv4nh2ZcvkuIcarusZG2/quHXRQPa+AW/0ykKlHJg
	d63Ep9kzLyWoXR3tytvPwJ4Nli/Odchakxpz/GQ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cf16cbc6-1845caad-3d13-4742-8d6d-94221b53c4fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8bab06ce110617e8948945137951c211a59977c51e831eb7afabd680926e3fe
Date: Mon, 16 May 2022 22:57:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652741819
