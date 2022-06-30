Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 788FB7B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 16:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656607612;
	h=To:Subject:From:Message-Id:Date;
	bh=z+YYs6vWWMACcg7x1OxFOdiU3uBkHbG0Fybfddi1iYc=;
	b=VWQyiV+4RBc3i6iXBGlR/T9bDk2WIB4m/CRS5WVPRELdQShz05P59fhl9IMpjZw7
	f9N443r2oGrchs/r6gYGWqkwrWatg8/7BXzN6FsbTL3MXn8L+tvg/0m9Z9OvoiJfWuF
	lXJZ6BLzBsuRlBS4+TrAWRP7+zy0UgoT1fnLwgLQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656607612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z+YYs6vWWMACcg7x1OxFOdiU3uBkHbG0Fybfddi1iYc=;
	b=A6QpBtfyyWPJgHlN8LzNwcJVBk2PVY/IYkCFo4WmNVmFjmETEJHDx2fWzvLCo9pI
	nxaqsA15sNEf8cppUeJPlHOZffKbxYfYh5JpEajEkLHACFldH6h3nonmSrbb4YUPlJG
	AQ/djqwabDT/c+nnNK8wBJnCpNoVsPO4J61fmVEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b5821db4-b97d0168-88c2-4353-988d-79f18fe6c430-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33f15934bbaa8d30d544a4ee6e43e2eac347e662d37fd534cacc7db1859187a5
Date: Thu, 30 Jun 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656607612
