Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F02C7A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657948013;
	h=To:Subject:From:Message-Id:Date;
	bh=/jzKJquTnLfPazYgr9c3vdOOZbZOl13mPXX4gy8xibY=;
	b=WtE6/xsSPVdo9jsxInrZa3OC7zxXtKbn5HC8AjHv+/8Q8AXRRZbLs2AhBJVrhvxI
	E+21wmLSWMeboj1yvTflbuSh6lOvZqVDaAaoxiR8hZdeeADs7zb3kgFswi8IsyN9Qdn
	LPb/6/WjbN+i5AFYo3CiJWQN9q1/sNDTDhuC1Yuw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657948013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/jzKJquTnLfPazYgr9c3vdOOZbZOl13mPXX4gy8xibY=;
	b=NdDaEwj5o4irJNT0xX4Vt/on8B30jAyqXh3OeDjR5Tp7rBynf4zMn+LVydXkKhKY
	HhyARBcwveuZ02Nnqf2mAiSmBTKyQLAu+zgrukIYHii8CzvUtlvoYNgJ3RbJZPwSwIj
	7fU6Ylk0+j6pq4OITbZ5FzD8VECgNEHfgD91Uv7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820566ff36-f50e9ada-84a3-4121-a442-50e6690762b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d08cd50de65303b7a38e0932276c6e69746e7aa04e0277c54d9a35f28f34d2d9
Date: Sat, 16 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657948012
