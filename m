Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77492A20
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661223653;
	h=To:Subject:From:Message-Id:Date;
	bh=Q/uywEjGFDqk4TzWOsBwc731gbXQ7PHFurX+Vh/0PAo=;
	b=hLNAMEs3HGBHeAeMX6iAueip46ojH9g7E4Bbbar/xdZFM5Htz6+4Szm0nx/obDEH
	9TOrE49DjmX6WcGqGgz0v2RzFVUI7RtwiyzMRSuj0HhEUNWj25bFf8eqA9fSCo3pbZL
	yAsbsgqCFOQI8TSFw1QHpGYjWrc8iu+NR5fLge98=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661223653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q/uywEjGFDqk4TzWOsBwc731gbXQ7PHFurX+Vh/0PAo=;
	b=ANi3UcV69t8o4mPhsNeuqbVKQgf2HIgchgUCWjTHYBogEnq6jcmA/SFQISZmkVRx
	x6IciyEksysTTc0UABMMj8EufPqJhx8V3WyJ0WAHlMGWQuLGPVn5/q4zf81gmQhRHPr
	Qrv19HpeN4DeuySsw1tCWUtQ5YxQ9uXzJTLpWf28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c8a54cf5-e2ed6d6f-61b3-418b-a209-18da765e4eac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a50553154670f9f5116496c8537959c53accde07b9d7c7ba0c6199e455e234a
Date: Tue, 23 Aug 2022 03:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661223652
