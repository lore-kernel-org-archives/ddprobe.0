Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFE328F6
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659272452;
	h=To:Subject:From:Message-Id:Date;
	bh=/qNGr4o7MikcKaDs6xIQezN8brxx/+MIk+M7La1fVJE=;
	b=V8WfwQiT5YyLyH/dSuhgS9HpxvusBUmUYT5OAAq5LycdGJi5wfT3gyzygei2T5TK
	ktt6EVKQRQh8kY/xAkeR0slfzV7YjsinLdMHuDVZjqeEWc97IBvLsDKVN72NI4SMo/F
	KbHge9M1CcwTE87nzQjsnVUTU9E6SMaeHKeDaGM4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659272452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/qNGr4o7MikcKaDs6xIQezN8brxx/+MIk+M7La1fVJE=;
	b=Ha+sC+eHNHX8BVEFagmpveKrDRTuOa6pL6NlGfCh2v2gin8fd7HJzXp/d+OzzIb4
	qzcahMPrNlSKvt2U5LND7/cBZnqJQuEayjDIV57biXU4iotRVOe6ijb4NAojH7Q8WsC
	CBsNMaCvODWYCaajciGT152DU+bVjrSqfS4y6TSE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182545859cc-54dbe278-d584-456d-8f84-dd079e620c5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d3d47f507f630eec98856fb56987bbd06785dccc3cc5b04bfd57d46eec9fd42
Date: Sun, 31 Jul 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659272452
