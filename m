Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AF81FBC
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656760612;
	h=To:Subject:From:Message-Id:Date;
	bh=khv7np9EgdVaoyz1XWFNeR5iCS+AQObzstPVMO7Qzuo=;
	b=c6HfVzcDZ3duHwUjE+hYxLMdmYLZi2qy6XlxqZOKl/yWRZyajryfYtETIt/geT7P
	zWW/AQeghHioqxR3mWsqYGLZlshQTATgzQnmhzATmaHsHr5Xku6KkC8Fx8SZwxcQHwP
	xiVqBDfY7HuVFTWjX3B3PxAqTdpRql1a7yZc7Azo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656760612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=khv7np9EgdVaoyz1XWFNeR5iCS+AQObzstPVMO7Qzuo=;
	b=OCnbin4jlRiF/HOHZibuCQbaCBSpVTKej8d7ZFjE3XUKk1u63haFjozyKKM3/PBG
	PYl0opFPBXSxvo0CntRApYKmLiB82+YxTcN6U8Psifsv6+1XgJ+39uHjfyPmJze75vs
	unV33tVkrC6uJjmzqPKDRTZFgvwRr6Y4SbT+MBjY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bea0b5d3-d6bd1751-7047-4851-8033-b16a664eaa9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 637b667df30e787110fc75412c0d377ec40e907bb0b4342e9800a90653155cb3
Date: Sat, 2 Jul 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656760612
