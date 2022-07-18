Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDBDF1C07
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 13:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658150212;
	h=To:Subject:From:Message-Id:Date;
	bh=TbYPnwXlFnjVhJd9J28GS5qsQTF3hQaNr22nkB4DPAk=;
	b=grheJZYaKwt5ccqPPlSZBItZyb7WKOJxr8kDL+4oQTBxg+dx3aFuHLjI5G6OKOql
	JJ+V5PfN/mljalKz+4Vzg0zc9ExRUtEDClNYWCO0SgAIdvT+dfbPMgNVyPUQ6hzQ/g/
	7V29F1lu1Lt3wbshJtSuLoLq7JkHS2+AV7/rkKsc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658150212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TbYPnwXlFnjVhJd9J28GS5qsQTF3hQaNr22nkB4DPAk=;
	b=NZC4EI4hekqHbTkxuah8OVC1yODN0xL2DRezXM10hyoMNMdA/yt+ng+GLA6Zb5Up
	NtSUj1yaU0wMHCGRwudTqRECsStiHBVlCRU6Wibe62s1k2RwpfqMiWWK/ltR/ZPxudR
	989dBaZfqgWt3dmkPI/Q5Yf4LzHUmEa0HPVNWhXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182117452b7-e78ec038-7251-4265-8164-303b3f517a8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d97602c3b13abfdc828779dc5ec629185424d120c2ec1407c0dcf0502cc3d7e1
Date: Mon, 18 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658150212
