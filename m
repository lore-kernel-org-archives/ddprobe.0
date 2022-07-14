Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135D74A38
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 16:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657815412;
	h=To:Subject:From:Message-Id:Date;
	bh=K1E9AeMb0tv8uIerhNYrFmHepPTPfIMmu2Mc5QGGasg=;
	b=BPkE7FZDILTWt/XRYN9k4HF81EC8HlmWD8u55KrGHDMCVpyfip8mMPAFMIYBWhvn
	FmYNnyMhdX+aPq6Ij/3IilVWJIPXHkrFnOUVJ0XMsQ2PtvYJn2rGWUGaVklNXzCUvB5
	9Qxs2zpcTsjxz+1FYVk4k6NXtIrs7b8eZMymB/qw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657815412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K1E9AeMb0tv8uIerhNYrFmHepPTPfIMmu2Mc5QGGasg=;
	b=kr/sm44WqCpuNh6huuWz8Z7bv9mwecSIHvNjsp+S5WHAZsNp/lbXVP1YSWYenvD8
	N0KjBt6lC/fwE0B4U1u6ypDJCXqwzcpCDwwX0Y0EIG8DoUrsAhbCcNufCvlcUo3F29Y
	hI0A0T2UaMEIbpGL4T5dEZg6totThuR0taoUl1U4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fd7fae33-74a987d0-b3a4-4daf-8dc0-ca3c5e643c07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7376e5b347d4b0b5091d4dd0d47a04b618145b88716548bfa0abd8d48c945f5d
Date: Thu, 14 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657815412
