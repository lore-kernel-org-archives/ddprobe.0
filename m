Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3C97F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659367852;
	h=To:Subject:From:Message-Id:Date;
	bh=TfS/YhNGdAMb+ycA/nTQk4Bz2xWdq4hlK6VdmQ04dGg=;
	b=Hege2v0HQ8Hjmvy0jng6t5o8R1lDSr9RmHOP6+guz9/YJvxG16J9+K67mGKr2cEz
	yttjaLvfoQGhLflaS+AMEVs81+/3wKnQMnpUW8lq3aVHnEGsSoa9twWP5UIK+PzYFIP
	+vHmWxe7AM+XGywJwZ0WgRnm3HzR0NQfZr7ne4Vc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659367852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TfS/YhNGdAMb+ycA/nTQk4Bz2xWdq4hlK6VdmQ04dGg=;
	b=cDjcZ1SRWqS3veS3t/r+B8GeRHk363xFi7HB3/tT40Zjihvhs7hZtvqpAQC8AHbl
	JSmvuc1alefiOIQZZOk0sWH6WBKfh/S1npaOyWsnUxF02cD2qZMZvr9CGErvJ7ipsDm
	wIOgKL6/4o1CJQL3SJc53r5auBDQnABlAaIqOEXo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825a0809dd-8685a700-ead8-4b63-9369-20455fec6135-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84f077d8e96b255d4ddfc0b14edcc525eef0c1a8557eeb9815b13b0eb8b032c4
Date: Mon, 1 Aug 2022 15:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659367852
