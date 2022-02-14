Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A8AA3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867605;
	h=To:Subject:From:Message-Id:Date;
	bh=Iwidxft5XhwhkibQ6ISalRrsl//8TNJ+b45YnHXyBVU=;
	b=V/DOOcRIXY5RgH39pyCK8b02KRoRHcsb8gqnoVLTOXxaTJvK431k/m+Pw1hmIdFo
	anHhjtqXmQWYEph6CnTdVj/K4XemFf+RXSZjjKs5pMnirfBMwONWaQkakJ6aRrJUfp4
	8QCSU2oOorf5E+5XaK1bElTINMmueU4b52tSckTs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867605;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Iwidxft5XhwhkibQ6ISalRrsl//8TNJ+b45YnHXyBVU=;
	b=D94zgYjJmDqAV/ZuXIoKqxRgekCJ3LfPGOjfv4f1AUd/LNVH5/mOWvphG7ONrIiq
	eV66sS/on0pBpSEWXM7EOkccdVsTGrTspb37JAOK0bkDWn9YbUF5hUZO4ykHWnMOM1l
	3LhEoxp/XilWgf3D+j3dKfkVDG2TgS0iBZZWdE3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9bfd136-b5525513-d7ac-47af-a98d-3e94cb9c0ecd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 772fcf806c2269119b6554d03c1da6b27a986c9e499ba5b8f4f4428fedfd148c
Date: Mon, 14 Feb 2022 19:40:04 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867604
