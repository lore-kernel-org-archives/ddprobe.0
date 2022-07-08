Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B6A7EB
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 07:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657264012;
	h=To:Subject:From:Message-Id:Date;
	bh=XZ63ncszFKhBw+qNVyfnV2VOTn6V9pQJb//oMfhHeSo=;
	b=YnPkzE0WovP1SkW0+PM7PQulnDAIVn1onlhkX+7HGrqMtVOOFr7yadN3NB9I/wxY
	GzMcKYijnN2xNQXBeglkFI90LQePh4MDuH1BMVQE0tlJlbsMgggrdnWn67xZ3+uoWTq
	HngtorWya/q8FCqG4fZenv7Fs06viBygDS0pI3Tk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657264012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XZ63ncszFKhBw+qNVyfnV2VOTn6V9pQJb//oMfhHeSo=;
	b=DWY8Pvo+IBskT26GAEMzHNfWw50AhAQdIqG7DSgo4Feq28Y1ScoXW/bWscHwLCHu
	78uS4t1lKWEdssMQwn0aPlyk/lHSp1ZqkAEMe1Wehxe+q3Hh4HxCaPpl6RE06thWWEU
	eHxU786i0LvuLgBZG52T43qaSrOToSW5dC0jDazI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dca1fc0e-673c7143-f806-4bc4-a879-050e9b187d18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e285447b4bdbd149f82ac460a9ad914317bd3f6991863d5ad2b58e25aee8a091
Date: Fri, 8 Jul 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657264012
