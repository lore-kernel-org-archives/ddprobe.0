Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5072F810
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 09:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647163884;
	h=To:Subject:From:Message-Id:Date;
	bh=/IUpw5/NBczt9IEL7TIVaiNLuLJtpEy2YrLZhX8Spaw=;
	b=ZB10u3CXcd0mRIDXaWQUCkHa1KrR5tUp26st5ErU+mqbT42jPs5KAqG6mdMBZIzu
	ZhZqTl1agnGRJER50+Scc5GZ8iQKe1oMoaKWhXabJddYHOI3+AneMzQ0vEKDYKJnlDl
	4+6qPXI3mjIHBO7IykSOLxKqgbKyJMHBjGWuuLrQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647163884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/IUpw5/NBczt9IEL7TIVaiNLuLJtpEy2YrLZhX8Spaw=;
	b=TkpVA+N5GExfU6/1GGkWV0G7nQumWxwrfqUk/oNJjc7xJCjx0eNz8DKT6KbPe/SY
	fRD4pmstNnhgglvG0sW+cHITO50Q1Om59EQZfL7eho7lDE5gpi2UOmX6nR+ezTnDN7Z
	TVrTrrdqG55lyKljhIs7M3IK4kEejcB4BZKPw4X4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f829e44bf-aef5e793-40e6-4ba4-b3ef-091c339b6216-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c878697700956f57fc38a4157e17a5431b5e953ff5daab5aa20139f91c3ad4e
Date: Sun, 13 Mar 2022 09:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647163884
