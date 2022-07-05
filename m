Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D778D17CE
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 10:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657017412;
	h=To:Subject:From:Message-Id:Date;
	bh=5UFB0mWLR3DF7Tf2jilXFVz0To7hvCte7uecNh1Kr+M=;
	b=DmSq6LJ4i5YoWxBv2reh7UjpAWwn/5SXI1hx5MOH1rUQboa0xlkZYe13EWjrob7K
	Uci0fjKnGEJk4tJpJsxJnq7f2vw9HGpkZezAOSGFCVcE0GcOLPE5mNPItVLy9rh3tRO
	ssS935JZ1eUtSgAeDZjkuUIxhxrD1zCN5HiyrJHQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657017412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5UFB0mWLR3DF7Tf2jilXFVz0To7hvCte7uecNh1Kr+M=;
	b=KfdhSV7DmS58PBgZX2BR2iT1Sn2WcE4WQr1OdDbBzcKupsrQjNXzQPe2DT918AXn
	gbXSpbRI/Ixe5ujDz3huRNrI+zSuZSaP16ScSZA0kLCiHNT+BEKaD+uszKbd6bJnbOq
	hf5fCcfpUEwVtadq9trcQTxs3+pPQj5nWuY0F2ik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cdef2a98-e0f273ec-3743-4d04-ba43-d57a765f4ff7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e04775ea2f5d692a908eb6676435ff2f535071d8f10784d9ececd91f0a2747ee
Date: Tue, 5 Jul 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657017412
