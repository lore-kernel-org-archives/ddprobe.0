Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476FE23B5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 07:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656056212;
	h=To:Subject:From:Message-Id:Date;
	bh=7e59PiGmCJn3XAAIAklrz2owvqEGV4flOVL8Krb/2hM=;
	b=XYWmuruV3X0QkIrmBQIBnhhH2vn+QLN0tYfZd3N/Znx0Bf08MZp92XI9tMUJQSo8
	TlMRiMukXW3kaQ1rh2yS7OluUYd6I13keaESr8ODbFaWMj33BVwk8CJgmNIs47wHJdU
	kKRGOSW9VpjBUG394ZMRnGSowQx9OgFrwGkSZheg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656056212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7e59PiGmCJn3XAAIAklrz2owvqEGV4flOVL8Krb/2hM=;
	b=k/cfoQ3LSgcQZ3Zb9bK0a5DYPyYpUW0nvNz9ZWbn7g3zfnrtBhA9ul0t9B9TysYr
	X+x5QeWeUZ05wFJz1yd94VUrUCqugKce5Ie9nc0uBE/VG24HzoXnFyysd18pAgydO6r
	AUmzQgyYNUvt1CNuiDI0nbiI6Vdh7niziJfZ/3y8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018194a46b77-dfbe0656-7ef8-4c84-8300-128db3a177ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63fd29cee72c00374d5fe2d0671c57ad2b1b755a01555f0dbe0b3c4d49407ec1
Date: Fri, 24 Jun 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656056212
