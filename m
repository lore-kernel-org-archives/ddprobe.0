Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEB67E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661324452;
	h=To:Subject:From:Message-Id:Date;
	bh=6bvkeAOgvonINtvuVIDPQ+Y7oO9qdsYJvJjCug7M2yE=;
	b=A1ddBt6WDupP+Q2N/4GZ84imK/7onR8nZM4CSiLT/igHnRjbRHusRKXtzRgzDktk
	MBG1ElTtlEqMoH2LA4UVuV9jDiMTS9rzfSl2wyNGpYSQaOvbV/nqDJWxzE8KJtZ/3xy
	5GgkKULpyY+3mYHEpisqYxN26zgUP1ed8wXWMFI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661324452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6bvkeAOgvonINtvuVIDPQ+Y7oO9qdsYJvJjCug7M2yE=;
	b=SURo8zD0lq//bvgTCVffRKvRHQJzlQfFXmK31Se37yyggUX3I9zngdKTD/yDAFXQ
	h54VFkGTzW5hHBQblFRpbAeJRXXeW9W/pw3TboDOHvKTnAiJX32r2JprxMUpPVRHHxf
	LWoUaGE51tnNkhWw6xQ/TLhsv44xzXZqKvmnQiTo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cea762d2-629056fd-9f6d-4fc9-af70-d68778dec77b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41a4e927d0d95888a698246e798d5da5234fcc22532f5b7ef182e79da4ff2868
Date: Wed, 24 Aug 2022 07:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661324452
