Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 869D317EC
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 08:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649232958;
	h=To:Subject:From:Message-Id:Date;
	bh=QpapRLm7KZLa9Z/qLbcAfAZVF7efG2OZ3q3rOVEXGco=;
	b=G28Cde4Z3cRY6Vq9ZJQhC2W+Mw2Zoldpptpo50p8h/moUD7UttsBzSQLMUOI1oJe
	w0OliaK34HUXbB2pwZ35xkIzWXvcx2cdEt5F5SvMKvpy2HJkCThpk3U/q6ojUK42rrj
	tBzu4Vnmbr6S1mythcASRQoxx6hPz+UX5ctJR46Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649232958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QpapRLm7KZLa9Z/qLbcAfAZVF7efG2OZ3q3rOVEXGco=;
	b=JaG6z8QphCGphx3XMey1lTXCSWkaxtUM4DswOOCOhTVhVlUzVruBne1m1xd8vAJT
	fpyz72e+tRdP6bk231kZt3HlnOEKMdiD/SsMkkEyt4ljKCt3t6g0ZvKpNPHo8QNy+D7
	8P+guHR4R+mblNtIs3yHlnPQ0lE++i2J9lU6Hn7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffdf1d364-0ccdfcb2-70fc-436b-9492-da3d442d0a38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 786d82334de9f0e2d38487662bd7fd290db7164743a362a761b347856bb20d73
Date: Wed, 6 Apr 2022 08:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649232958
