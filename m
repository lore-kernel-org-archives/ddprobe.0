Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469862F33
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659824452;
	h=To:Subject:From:Message-Id:Date;
	bh=V/kWvdVdYEPr4NKMt5kS6ReydTENVLVjTaClzLBZeXA=;
	b=AulaVPTztO7Kmer07lEP0Qe6TkNKBqLu0A+od6SZ0+E5OUjbszKnV3C6kKxLa7v/
	cxrpQ7fRNYGzmXYp/oc7XHLnyItoUic38R2z1oE3KgOkGa/jq9HXVOdwNTsQJMrd+PB
	PMX/+82vUi3xrlAjwC4lYE3KhCfn91uUsv06wv2c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659824452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V/kWvdVdYEPr4NKMt5kS6ReydTENVLVjTaClzLBZeXA=;
	b=XEplTmE6pJm0ogVUZFadxqX3CBZxz9YWngw84u8tbZimMyVUaMpR8IjhZDaBHU42
	LjrAdJhdPQA5Sbb7xnSfsh5QPZAdZyZfmM9VGjpFDyPMHZHqY6QbgpGPFlKXg4B8uyy
	+98RXDPCrWodhiZv4TasYoKsgCkfttuSAH40GEac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182753f33c0-0aa343b1-28fb-4d65-b20d-50398b5ced57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b435dd9cb50655eeab695b9295dce3df2cf2906cf7e025672c4ce506b7fa129f
Date: Sat, 6 Aug 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659824452
