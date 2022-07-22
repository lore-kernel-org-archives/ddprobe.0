Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D939115A6
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 09:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658480812;
	h=To:Subject:From:Message-Id:Date;
	bh=mXYx9mLtZE7kCyJ7WHVtnsGVaztPg6NWGdYpTJM+ikM=;
	b=UusMcXk2wRgThEqeRR9E/9NmSd2d2KnC17RM8ug3xbo1uv23d0GlRQcZ3RGMzT88
	ewsqDkIgSm/zIkmDhOZn7A/uLsx3ZDeLGIN5UmqcirDyB/MKUHIe1smXf/xLJyDA0SQ
	SHBUwqp9BK2LAEyujlbFqNeEa4exdETO25NGxrs4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658480812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mXYx9mLtZE7kCyJ7WHVtnsGVaztPg6NWGdYpTJM+ikM=;
	b=R254L69sKO43j4dBnmRaswxNpfBesT1KaabhPZh7Y3dk87XuAdVHlnNabiH3q+kM
	rFsn1h5aMXWQ7lfBKtUiE3yS1DvTZbtLeSYl4FNcLtiqqi13MJ7mDxdKV6v2KVPh80c
	P7lb/BtXj3ysNp3aW3Rj8PKAynMNiNf1058GbFX4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822528e156-921acef4-e6f9-4835-beb9-e57902cd082d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 070b0009ce56337d9d002853c3915db68bbf85c9df3d99563c4ab736a45d48b0
Date: Fri, 22 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658480812
