Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8830D15AD
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659249653;
	h=To:Subject:From:Message-Id:Date;
	bh=3qGH+xjv3L3y/UouBRxMNi9OSUXnagVE9SJNIvEr81U=;
	b=SAWtPKNF0BBa+qTRaFXGGUE/xgImAeAvJAg4RnEkbq7THrGrLIqZZ76zkksOWvR0
	lZu8P6PwC8BE2X9WbPZvI7xOb2KAmPsyikW8lUMAdK3TjMDFKBpNHMGlH003tvml8rk
	p2RPczMLjxfjAI6Vvq0dSMzraDTYO0Q2XLFPn3GE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659249652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3qGH+xjv3L3y/UouBRxMNi9OSUXnagVE9SJNIvEr81U=;
	b=ec2oGm+9wManYkl3Xgfq7W4CvDFuxExDLPHU9LP9ccIfv0kPXUTmlq7f/c1ZTWDj
	/mr/2n0RK7vLV3Ki9Oq4ewIlOLNcBFaJeeYLbKwKMMCh8Hfia3d/Xzf3Ue2w8v0LgUV
	kPSrV1HaxuAfY5zOZmxX4Da3abgw7YVNexoQvQ74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018252fc736e-1d0c15e4-da51-4c5c-bca5-409ec807a639-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2dcce5c45e18ddadd69fa28bb094a690eb3ae1357d88b8f116d68f3358f242e2
Date: Sun, 31 Jul 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659249652
