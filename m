Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182002566
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 21:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653514739;
	h=To:Subject:From:Message-Id:Date;
	bh=oimh0nK+fPqzW7fJsj3UduaBcpt+Dgz12nCZ6fV8Aus=;
	b=XV+1P7EeNaV8p+cGQOJivJpfvLLAN2dYTZ6cAtrESODOkFX7Uo4QTFWVMTtSIv9o
	7iUtj536syhmDuc9SMwDdAR7m9zpV4D8MszytZrz/nzz8RZ3GLD80bnPwFhISzlbMSo
	74JdxbeqfRRVSDqY2QyJG9XhfpWdT2pKm59z1cE0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653514739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oimh0nK+fPqzW7fJsj3UduaBcpt+Dgz12nCZ6fV8Aus=;
	b=b9rIcdaqtq8+Eczz/gvauLeCDGtIeDEBguEegXx66DGJQoFgjdrhbLdbSpFSRgTz
	0YVVHxtU5hGKlYSxHvbKNqX2NjcL5D7RHaLfiX2plwh734UtUWG3DAkngnN6RUGS4ts
	Q/fet8I45KmrQR3TiR0X+sY5AXVE/zCUVkXewpJ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fd289e26-236a7110-1764-4f10-a2dd-20f448ba6a69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efafbc33a68695c9b00ec8a22262171dc471085ae758288e68e9438bda7c4137
Date: Wed, 25 May 2022 21:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653514739
