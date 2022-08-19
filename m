Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C2C7B
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660879252;
	h=To:Subject:From:Message-Id:Date;
	bh=amjoxdq47cloZ3Tl9BpGIamF/fqWGel9WHp4szFGH4w=;
	b=OdljlslXirnjjl/sBZ7oLzjUvZVvtE8QzLuXOU58boE9+gxgenpivFQubD49kK27
	QqEgOBtGhY9vak7Vmgjvnn9gHqIpUHZ1rUIFD0OdrAhOXQabAC9IReKFYvfk9afv11E
	vRmYWPt+6q3Rz9GYMU3CKelk1uJBfYDVFd81F/eE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660879252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=amjoxdq47cloZ3Tl9BpGIamF/fqWGel9WHp4szFGH4w=;
	b=TYgw2CV5gOn16IZVb9tLyiGt7YWOllBMd/2sfKBDcgewfwEMt/iiSoXP0Ss4MT/e
	bzXVA9+TOXZ6Zmdoiho3y3MxzsrgCfcgTSxaktJqvJlAtAjD7O5vcEAA1gdSo+5H+Vx
	/W2R98Ds5jDnIoKLxhxUgzML2B3hVocbYkXXZV+E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b41e2c3e-83b11e9d-b7af-4921-900c-7a646ff0b1bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c8a6f4a0b9f7a46156ed6c2d7da9c6be643f2ed2003f32143eeb3b4d1b496f3
Date: Fri, 19 Aug 2022 03:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660879252
