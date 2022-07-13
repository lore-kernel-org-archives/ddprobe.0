Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF817A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 06:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657694812;
	h=To:Subject:From:Message-Id:Date;
	bh=CguNNfLUiUeNIcJE3y6Jmv4FDp9q11CO5j+Uh2bN9oI=;
	b=EtB0dHfQCSsm+txHtKBtJrkfuUMQ4UTKzd9YeuJOdFXltEiplpxKc/a0YEgRZu3F
	pG46fwuxHxOukVD7ASplJXRx85IM0D5wfVfrmJAWFxJntJClouX2rU5BRLatsR5az4Y
	wR/qSSFhqb4+NoS0yqKd4BLSmlNJ2HI0B63mwYNs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657694812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CguNNfLUiUeNIcJE3y6Jmv4FDp9q11CO5j+Uh2bN9oI=;
	b=VphHQrrBT74gfDnxlasysY82O6Cdtdz1yYCCAUQ751mcoxLIOMGIqePEDxwRX92t
	x3O7uu0aoRyWQesKmTkG258RiuTfDRNou/84tFObY65jFbnEU5M6//OK0zZJ5rVlUjN
	J7oAWgoXm68+jdREuX75H0q4ojPJh0Cb7K8onRgA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f64f78d4-47094500-59bb-4a50-82ec-36d05157a9f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff07b2166ac61e369b82a566729d872cfc3d3283450631a473389c050f03a5f4
Date: Wed, 13 Jul 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657694812
