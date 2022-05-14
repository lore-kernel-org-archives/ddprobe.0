Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2988E2F25
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 22:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652566739;
	h=To:Subject:From:Message-Id:Date;
	bh=vx846d6ldhfdv6BJiWfW2CPYEZjglbKGIBHjPmZ9P8s=;
	b=K2bjxGiqf2GC1z6TEpXE0u4Un/Di0j8YQrUqBetkfGPutwEa2F41efSXZWiEYSgy
	o1PlSO7jwuadvv8e2kIWOG48djbSAfZ22NF8KLkxNqcG9lzRbIYfZFM4LoYJXdhuTCj
	ZRKcdQN6uJh2P4bNlz0PKdm43X1nGPkE7/vv2qAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652566739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vx846d6ldhfdv6BJiWfW2CPYEZjglbKGIBHjPmZ9P8s=;
	b=glgBzHB6qUnjl+/1jOoKRaIWy/xktQOYpo6W3IagYgM2cE1FX92uh2Tv/AFAhY5v
	POy8AW8kPhFT3PC/BCo3mRKFB3/TPqDOS6CW+mF9P81Yxb1TN840HPoCSiudZS5hZ0e
	91UvMtASwnwNDwzO7SG4qYTIJasb8H/4LWSYX8Es=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c4a7498c-11a3c416-3ff2-4fbc-a5f9-c3dda6f2e0df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 846ce3033a6f7e3d0625dbff2815d7ce4cf8c1b76a838183af349a49c942b547
Date: Sat, 14 May 2022 22:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652566739
