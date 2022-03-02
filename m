Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6517F7A
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 00:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646180785;
	h=To:Subject:From:Message-Id:Date;
	bh=dKWxyKXIn/mwuETMsBozjUt6s1xx9t+Q7g/Tsy4n1tw=;
	b=I5+8xFSv4T7NzOt9nv18H9UBdUTdjujnV+SJXEfYkC2Xw4v3DhrW59qPC7z4VS3J
	E45tBW8fFuH7nmg5/khDxuWju/Kc8Nnq0O/BcNnMJm47UZJms2QbT0rlUzK/XbQnSSR
	cAfsmAYkCpeKL7/xxDiG2OQHKWuaID8GnHihCz48=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646180785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dKWxyKXIn/mwuETMsBozjUt6s1xx9t+Q7g/Tsy4n1tw=;
	b=R0wkdA/+ayrT4ax80TJfGXSRyJrn9/EmrAHXkVgFJFzedf0zblLy9i7JHiQeqqZa
	FwI/87bNz6dtPqTYRBbmocD8d06ci3Geg4Z30EzlcknHTcu+PUOUjmAXIW022gNGdrb
	9mmrQLWb7dPW5UFCGnDyeeyiVQcgA1pR0JK+JpoE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f48055ac3-9efa314d-dcca-4127-8bd9-19b54e464b0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8467f603b23b151906aaaa102efd5034f53c8fcb1c00d297d068982dd421e9ba
Date: Wed, 2 Mar 2022 00:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646180784
