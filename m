Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D24D7A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 05:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654754099;
	h=To:Subject:From:Message-Id:Date;
	bh=QyAnzJ3h4QvIyC0Usx0rexLEEpcbQPeXdgVanLNHgU8=;
	b=kWHT0W5uvt6pfd8m/CGhv4zv+j0rfIRMU4LEhfRi5XM7izYnxpoYlG6UgOp5g9T6
	o4Pe3qpBuTjiAi0X73Ac/MQN6x7lv0/GGe+FvNQ99P3tw59Jrlj74a3zd2vE3Fg6PpU
	DMlsw4sBAG0BIkwzzma1kmifXzrb+/rhK3OlIEEU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654754099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QyAnzJ3h4QvIyC0Usx0rexLEEpcbQPeXdgVanLNHgU8=;
	b=AOQmR0gPimuQ86OEvvcDop3W6ZkVH+IS+5O/8NrduLI8TLU7our4OZDgx0k82kD3
	qupy/TitUHvM9USYvYDSunQN8PmGhS0hyppe/hzf7VmWttGvJPSgOpzaHYQF0fRcujB
	KbTbEby9RuzqDWQ9IAef/FdxW8lckGetsCA0Rydw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814707c031-c208855a-1224-4d7b-bc30-5eca20cbd6b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e170336b202ec22c66cf26c4748b283bb8eef3c8f0149a011e36293c9b0174fc
Date: Thu, 9 Jun 2022 05:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654754099
